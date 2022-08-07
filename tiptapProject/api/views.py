from rest_framework import status
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet

# 매물 조회 API를 위한 serializer와 model
from api.serializers import RoomSerializer
from app.models import Room

class RoomAPIView(ModelViewSet):
    """RoomAPIView
    
    RoomAPIView는 GET 요청이 발생할 경우 해당하는 매물의 정보를 응답하기 위해 사용됩니다.
    RoomAPIView는 읽기 요청(GET)에만 정상적으로 응답합니다.
    RoomAPIView를 통해 새로운 매물을 등록할 수 없습니다.

    매물의 위치는 위도(location_x)와 경도(location_y)를 이용하여 표현됩니다.
    카카오지도 API를 사용하는 경우 좌표 표현에 유의해주시기 바랍니다.

    On progress:
         디버깅을 위해 POST가 되도록 작성했습니다.
         기능 확인 후 POST 기능을 삭제하고 ReadOnlyModelViewSet을 상속받도록 변경합니다.
    """
    queryset = Room.objects.all().select_related("basicInfo", "options", "tag")
    serializer_class = RoomSerializer
