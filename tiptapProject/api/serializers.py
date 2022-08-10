from rest_framework import serializers
from rest_framework.utils import model_meta
from app.models import BrokerAgency, CheckList, Image, Interest, Room, RoomInfo, Tag


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
    class Meta:
        model = BrokerAgency
        fields = ('brokerAgency_id', 'brokerAgency_name', 'brokerAgency_number1')


class InterestForRoomSerializer(serializers.ModelSerializer):
    class Meta:
        model = Interest
        fields = ('interest_id',)


class RoomSerializer(serializers.ModelSerializer):
    roomInfo = RoomInfoForRoomSerializer()
    # interest = InterestRelatedField(read_only=True)
    # interest = serializers.RelatedField(read_only=True)
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
        model = CheckList
        exclude = ('user',)

    def create(self, validated_data):
        roomInfo = RoomInfo.objects.create(**validated_data.pop('roomInfo'))
        room = validated_data.get("room")
        for image in self.context['request'].FILES.getlist('image'):
            Image.objects.create(roomInfo=roomInfo, image=image)
        return CheckList.objects.create(roomInfo=roomInfo, user_id=1, room=room)

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
        roomInfo = CheckList.objects.get(checklist_id=check).roomInfo
        images_added = []
        for image in self.initial_data.getlist("image"):
            img = Image.objects.create(roomInfo=roomInfo, image=image)
            images_added.append(img.image.url)
        return images_added


class RoomInfoForInterestSerializer(serializers.ModelSerializer):
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


class InterestSerializer(serializers.ModelSerializer):
    roomInfo = RoomInfoForInterestSerializer()
    tag = TagSerializer(many=True, read_only=True)
    images = serializers.SerializerMethodField()
    thumbnail = serializers.SerializerMethodField()

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
