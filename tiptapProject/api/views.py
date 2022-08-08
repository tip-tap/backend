from rest_framework import status
from rest_framework.response import Response
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
    
    def retrieve(self, request, *args, **kwargs):
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
