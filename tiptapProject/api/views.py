import os

from rest_framework import status
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet, GenericViewSet

from api.serializers import ChecklistSerializer
from app.models import Checklist, Image
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


class ChecklistImageAPIView(GenericViewSet):
    def destroy(self, request, *args, **kwargs):
        image_url = request.data.get("image")[7:]
        Image.objects.filter(image=image_url).get().delete()
        image = os.path.join(MEDIA_ROOT, image_url)
        os.remove(image)
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
