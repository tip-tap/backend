from rest_framework import serializers
from app.models import BrokerAgency, CheckList, Image, Room, RoomInfo, Tag

# RoomInfoSerializer: Created by @ssanghy on checklist
class RoomInfoForRoomSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomInfo
        exclude = (
            'roominfo_id',
            'detailInfo_is_moldy',
            'detailInfo_is_leak',
            'detailInfo_is_bug',
            'detailInfo_is_crack',
            'detailInfo_soundproof',
            'detailInfo_window_size',
            'detailInfo_main_direction',
            'detailInfo_ventilator',
            'detailInfo_ventilation',
            'detailInfo_external_noise',
            'detailInfo_water_pressure',
            'detailInfo_drainage',
            'detailInfo_hot_water',
        )


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = '__all__'


class BrokerAgencySerializer(serializers.ModelSerializer):
    class Meta:
        model = BrokerAgency
        fields = ('brokerAgency_id', 'brokerAgency_name', 'brokerAgency_number1')


class RoomSerializer(serializers.ModelSerializer):
    roomInfo = RoomInfoForRoomSerializer()
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
         