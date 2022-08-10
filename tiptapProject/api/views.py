import os

from django.http import Http404
from rest_framework import status
from rest_framework.response import Response

from rest_framework.viewsets import ModelViewSet, GenericViewSet

from api.serializers import ChecklistSerializer, ImageSerializer, InterestSerializer, ComfiredRoomSerializer
from app.models import CheckList, Image, Interest, ConfirmedRoom
from app.utils import remove_image
from rest_framework.viewsets import ModelViewSet, ReadOnlyModelViewSet

from api.serializers import RoomSerializer
from app.models import Room

from app.utils import string_to_list

class RoomAPIView(ReadOnlyModelViewSet):
    """RoomAPIView
    
    RoomAPIView는 GET 요청이 발생할 경우 해당하는 매물의 정보를 응답하기 위해 사용됩니다.
    RoomAPIView는 읽기 요청(GET)에만 정상적으로 응답합니다.
    RoomAPIView를 통해 새로운 매물을 등록할 수 없습니다.

    On progress:
        지도 뷰에 따른 필터링을 개발 중입니다.
    """
    queryset = Room.objects.all().select_related('roomInfo')
    serializer_class = RoomSerializer

    """def filter_queryset(self, queryset):
        queryset = super().filter_queryset(queryset)
        start, center, end = string_to_list(self.request.query_params.get('location'))
        queryset = queryset.filter(
            roomInfo__basicInfo_location_x__gte=start[0],
            roomInfo__basicInfo_location_x__lte=end[0],
            roomInfo__basicInfo_location_y__gte=start[1],
            roomInfo__basicInfo_location_y__lte=end[1]
        )
        return queryset"""

    """def list(self, request, *args, **kwargs):
        queryset = self.get_queryset()
        
        page = self.paginate_queryset(queryset)
        if page:
            serializer = self.get_serializer(queryset, many=True)
            return self.get_paginated_response(serializer.data)
        
        serializer = self.get_serializer(queryset, many=True)
        
        response_data = {"total": len(serializer.data), "rooms": serializer.data}
        return Response(response_data)"""
    
    def list(self, request, *args, **kwargs):
        """
        queryset = self.filter_queryset(self.get_queryset())
        serializer = self.get_serializer(queryset, many=True)
        """
        left_bottom, middle, right_top = string_to_list(request.GET.get("location","[[-100,-100],[0,0],[200,200]]")) #location없으면 기본 값 가져옴
        check = self.filter_queryset(self.get_queryset()).extra(
            select={'manhattan_distance': f'ABS(basicInfo_location_x - {middle[0]}) + ABS(basicInfo_location_y - {middle[1]})'},
            where={f'''basicInfo_location_x > {left_bottom[0]} and basicInfo_location_y > {left_bottom[1]}
                   and basicInfo_location_x < {right_top[0]} and basicInfo_location_y <{right_top[1]}'''}
        ).order_by('manhattan_distance')

        queryset = self.filter_queryset(check)

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)

        response_data = {"total": len(serializer.data), "rooms": serializer.data}
        return Response(response_data)

class ChecklistAPIView(ModelViewSet):
    queryset = CheckList.objects.all()
    serializer_class = ChecklistSerializer

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset())

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)

        response_data = { "total" : len(serializer.data), "checklists" : serializer.data}
        return Response(response_data)

    def create(self, request, *args, **kwargs):
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        serializer.save()
        headers = self.get_success_headers(serializer.data)
        response_data = {
            "message" : "체크리스트 저장 성공",
            "data" : serializer.data
        }
        return Response(response_data, status=status.HTTP_201_CREATED, headers=headers)

    """ Room은 수정 불가, 이미지는 이미지 API 이용하여 하나하나 추가, 삭제 해야함 """
    def update(self, request, *args, **kwargs):
        partial = kwargs.pop('partial', False)
        instance = self.get_object()
        serializer = self.get_serializer(instance, data=request.data, partial=partial)
        serializer.is_valid(raise_exception=True)
        serializer.save()

        if getattr(instance, '_prefetched_objects_cache', None):
            instance._prefetched_objects_cache = {}
        return Response(serializer.data)


    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        roomInfo = instance.roomInfo
        image_set = Image.objects.filter(roomInfo=roomInfo)
        for image in image_set:
            remove_image(image.image.url)
        roomInfo.delete()
        instance.delete()
        response_data = {
            "message" : "체크리스트 삭제 성공",
        }
        return Response(response_data, status=status.HTTP_204_NO_CONTENT)
class ChecklistImageAPIView(GenericViewSet):
    def destroy(self, request, *args, **kwargs):
        remove_image(request.data.get("image"))
        response_data = {
            "message"  : "이미지 삭제 성공"
        }
        return Response(response_data, status=status.HTTP_204_NO_CONTENT)


    def create(self, request, *args, **kwargs):
        serializer = ImageSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        added_images = serializer.save()
        response_data = {
            "message" : "이미지 추가 성공",
            "added_images" : added_images
        }
        return Response(response_data, status=status.HTTP_201_CREATED)


class InterestAPIView(ModelViewSet):
    queryset = Interest.objects.all().order_by('interest_id')
    serializer_class = InterestSerializer

    def get_interest(self, room_id, user_id):
        try:
            return Interest.objects.get(room_id=room_id, user=user_id)
        except Interest.DoesNotExist:
            raise Http404

    def is_duplicate(self, room_id, user_id):
        interest = list(Interest.objects.filter(room_id=room_id, user_id=user_id))
        if not interest:
            return False
        else:
            return True

    def get_queryset(self):
        interestingRoomIds = super().get_queryset().filter(user=1).values_list('room_id', flat=True)
        # interestingRoomIds = super().get_queryset().filter(user=request.user.id).values_list('room_id', flat=True)
        qs = Room.objects.filter(room_id__in=interestingRoomIds).select_related('roomInfo')
        return qs

    def create(self, request, *args, **kwargs):
        room_id = request.data.get('room_id', 1)
        if self.is_duplicate(room_id, 1):
            response_data = {
                "message": "관심매물 추가 실패"
            }

            return Response(
                response_data,
                status=status.HTTP_400_BAD_REQUEST
            )

        else:
            interest = Interest(room_id=room_id, user_id=1)
            # interest = Interest(user_id = request.user.id, room_id = room_id)
            interest.save()
            response_data = {
                "message": "관심매물 추가 성공"
            }

            return Response(
                response_data,
                status=status.HTTP_201_CREATED,
            )

    def destroy(self, request, *args, **kwargs):
        room_id = self.kwargs['room_id']

        # interest = self.get_interest(room_id, request.user.id)
        interest = self.get_interest(room_id, 1)
        interest.delete()
        response_data = {
            "message": "관심매물 삭제 성공"
        }

        return Response(
            response_data,
            status=status.HTTP_204_NO_CONTENT,
        )

class ConfirmedRoomAPIView(ModelViewSet):
    queryset = CheckList.objects.all()
    serializer_class = ComfiredRoomSerializer
    def create(self, request, *args, **kwargs):
        # TODO : 중복제거 로직 추가

        checklist_id = request.data.get('checklist_id')
        checklist = super().get_queryset().get(checklist_id=checklist_id)
        confirmedRoom = ConfirmedRoom(user_id=1, room_id= checklist.room_id, checklist_id=checklist_id) # user_id = checklist.user_id
        confirmedRoom.save()

        response_data = {
            "message": "확정매물 추가 성공"
        }

        return Response(
            response_data,
            status=status.HTTP_201_CREATED,
        )
