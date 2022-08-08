from rest_framework import serializers
from app.models import BrokerAgency, CheckList, Image, Room, RoomInfo, Tag

# RoomInfoSerializer: Created by @ssanghy on checklist
class RoomInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomInfo
        exclude = ('roominfo_id', )


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = '__all__'


class BrokerAgencySerializer(serializers.ModelSerializer):
    class Meta:
        model = BrokerAgency
        fields = ('brokerAgency_id', 'brokerAgency_name', 'brokerAgency_number1')


class RoomSerializer(serializers.ModelSerializer):
    roomInfo = RoomInfoSerializer()
    tag = TagSerializer(many=True, read_only=True)
    thumbnail = serializers.SerializerMethodField()
    images = serializers.SerializerMethodField()

    def get_thumbnail(self, obj):
        images = obj.roomInfo.image_set.all()
        if images:
            return images[0].image.url
        return []

    def get_images(self, obj):
        images = obj.roomInfo.image_set.all()
        image_list = []
        for i in images:
            image_list.append(i.image.url)
        return image_list

    class Meta:
        model = Room
        exclude = ('brokerAgency',)
         