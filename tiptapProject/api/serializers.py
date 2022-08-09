from asyncore import read
from rest_framework import serializers
from app.models import BrokerAgency, CheckList, Image, Interest, Room, RoomInfo, Tag

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
        exclude = ('tag_id',)
    
    def to_representation(self, instance):
        if instance:
            return instance.tag_name


class BrokerAgencySerializer(serializers.ModelSerializer):
        model = BrokerAgency
        fields = ('brokerAgency_id', 'brokerAgency_name', 'brokerAgency_number1')


class InterestForRoomSerializer(serializers.ModelSerializer):
    class Meta:
        model = Interest
        fields = ('interest_id',)

class RoomSerializer(serializers.ModelSerializer):
    roomInfo = RoomInfoForRoomSerializer()
    #interest = InterestRelatedField(read_only=True)
    #interest = serializers.RelatedField(read_only=True)
    interest = InterestForRoomSerializer(many=True, read_only=True)
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

    def to_representation(self, instance):
        output = super().to_representation(instance)
        output["interest"] = bool(output["interest"])
        return output

    class Meta:
        model = Room
        exclude = ('brokerAgency',)
         