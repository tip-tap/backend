import os

from rest_framework import status
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet, GenericViewSet

from api.serializers import ChecklistSerializer
from app.models import Checklist, Image
from app.utils import string_to_list, remove_image
from tiptapProject.settings import MEDIA_ROOT


class ChecklistAPIView(ModelViewSet):
    queryset = Checklist.objects.all()
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
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        image = serializer.save()
        response_data = {
            "message" : "이미지 추가 성공",
            "image" : image.image.url,
        }
        return Response(response_data, status=status.HTTP_201_CREATED)
