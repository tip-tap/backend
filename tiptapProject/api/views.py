from rest_framework import status
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet, ReadOnlyModelViewSet

from api.serializers import RoomSerializer
from app.models import Room

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

    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset())
        
        page = self.paginate_queryset(queryset)
        if page:
            serializer = self.get_serializer(queryset, many=True)
            return self.get_paginated_response(serializer.data)
        
        serializer = self.get_serializer(queryset, many=True)
        
        response_data = {"total": len(serializer.data), "rooms": serializer.data}
        return Response(response_data)
