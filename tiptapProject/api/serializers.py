from rest_framework import serializers

# Create your serializers here.
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
        roomInfo = RoomInfo.objects.create(**validated_data.pop('roomInfo'))
        room = validated_data.get("room")
        for image in self.context['request'].FILES.getlist('image'):
            Image.objects.create(roomInfo=roomInfo, image=image)
        return Checklist.objects.create(roomInfo=roomInfo, user_id=1, room=room)


class ImageSerializer(serializers.Serializer):
    checklist_id = serializers.IntegerField()
    image = serializers.ImageField()

    def create(self, validated_data):
        check = validated_data.get("checklist_id")
        image = validated_data.get("image")
        roomInfo = Checklist.objects.filter(checklist_id=check).get().roomInfo
        return Image.objects.create(roomInfo=roomInfo, image=image)
