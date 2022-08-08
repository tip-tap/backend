from rest_framework import serializers

from app.models import Room, RoomInfo, Interest, Tag, BrokerAgency

class RoomInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = RoomInfo
        exclude = ('roominfo_id',)

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
    def get_thumbnail(self, obj):
        images = obj.roomInfo.image_set.all()
        if images:
            return images[0].image.url
        return []

    class Meta:
        model = Room
        exclude = ('brokerAgency',)