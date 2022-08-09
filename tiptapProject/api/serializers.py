from rest_framework import serializers

# Create your serializers here.
from rest_framework.utils import model_meta

from app.models import Checklist, RoomInfo, Room, Image


class RoomInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomInfo
        exclude = ('roominfo_id',)


class ChecklistSerializer(serializers.ModelSerializer):
    roomInfo = RoomInfoSerializer(allow_null=True)
    images = serializers.SerializerMethodField()

    def get_images(self, obj):
        images = obj.roomInfo.image_set.all()
        image_list = []
        for i in images:
            image_list.append(i.image.url)
        return image_list

    class Meta:
        model = Checklist
        exclude = ('user',)

    def create(self, validated_data):
        super().create()
        roomInfo = RoomInfo.objects.create(**validated_data.pop('roomInfo'))
        room = validated_data.get("room")
        for image in self.context['request'].FILES.getlist('image'):
            Image.objects.create(roomInfo=roomInfo, image=image)
        return Checklist.objects.create(roomInfo=roomInfo, user_id=1, room=room)

    """ Room은 수정 불가, 이미지는 이미지 API 이용하여 추가, 삭제 해야함 """
    def update(self, instance, validated_data):
        info = model_meta.get_field_info(instance)
        m2m_fields = []
        for attr, value in validated_data.items():
            if attr in info.relations:
                m2m_fields.append((attr, value))
            else:
                setattr(instance, attr, value)
        instance.save()

        roomInfo_value = validated_data["roomInfo"]
        roomInfo_obj = getattr(instance, "roomInfo")

        for at in roomInfo_value:
            setattr(roomInfo_obj, at, roomInfo_value.get(at))
        roomInfo_obj.save()
        return instance


class ImageSerializer(serializers.Serializer):
    checklist_id = serializers.IntegerField()
    image = serializers.ImageField()

    def create(self, validated_data):
        check = validated_data.get("checklist_id")
        image = validated_data.get("image")
        roomInfo = Checklist.objects.filter(checklist_id=check).get().roomInfo
        return Image.objects.create(roomInfo=roomInfo, image=image)
