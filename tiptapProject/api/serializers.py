from rest_framework import serializers

from app.models import BasicInfo, DetailInfo, Option, Image, CheckList, Room, Tag


class BasicInfoSerializer(serializers.ModelSerializer):
    # image 필드 추가.  SerializerMethod()필드는 정의한 메서드의 반환 값을 필드값으로 갖게됨. (메서드 이름을 입력하지 않으면 기본값으로 get_{필드이름}메서드를 사용)
    image = serializers.SerializerMethodField()

    def get_image(self, obj):
        images = obj.image_set.all()
        image_list = []
        for i in images:
            image_list.append(i.image.url)
        return image_list
    class Meta:
        model = BasicInfo
        fields = '__all__'


class DetailInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = DetailInfo
        fields = '__all__'


class OptionSubSerializer(serializers.ModelSerializer):
    class Meta:
        model = Option
        fields = '__all__'


class ChecklistSerializer(serializers.ModelSerializer):
    class Meta:
        model = CheckList
        fields = '__all__'


class TagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tag
        fields = '__all__'


class RoomSerializer(serializers.ModelSerializer):
    basicInfo = BasicInfoSerializer() # TODO: 디버깅 후 read_only=True로 설정
    options = OptionSubSerializer()
    tag = TagSerializer(many=True, read_only=True)
    
    class Meta:
        model = Room
        fields = '__all__'
    
    def create(self, validated_data):
        basicInfo = BasicInfo.objects.create(**validated_data.pop('basicInfo'))
        options = Option.objects.create(**validated_data.pop('options'))
        # tag = Tag.objects.create(**validated_data.pop('tag'))

        room = Room.objects.create(basicInfo=basicInfo, options=options, tag=tag, **validated_data)

        return room
