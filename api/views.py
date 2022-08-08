from rest_framework import status
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from api.serializers import RoomSerializer
from app.models import Room, Interest
from django.http import Http404


class InterestAPIView(ModelViewSet):
    queryset = Interest.objects.all().order_by('interest_id')
    serializer_class = RoomSerializer

    def get_interest(self, room_id, user_id):
        try:
            return Interest.objects.get(room_id=room_id, user=user_id)
        except Interest.DoesNotExist:
            raise Http404

    def is_duplicate(self, room_id, user_id):
        interest = list(Interest.objects.filter(room_id=room_id, user_id=user_id))
        print(interest)
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
                "message": "관심매물 추가 살패"
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