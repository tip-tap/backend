from rest_framework import serializers

from app.models import BasicInfo, DetailInfo, Option


# ModelSerializer 이용
class DetailInfoSerializer(serializers.ModelSerializer):
    class Meta:
        model = DetailInfo
        fields = "__all__"


class OptionSubSerializer(serializers.ModelSerializer):
    class Meta:
        model = Option
        fields = "__all__"


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
        fields = "__all__"


# Serializer 이용
class CheckListSerializer(serializers.Serializer):
    room_id = serializers.IntegerField(allow_null=True, default=None)
    location_x = serializers.DecimalField(max_digits=10, decimal_places=7)
    location_y = serializers.DecimalField(max_digits=10, decimal_places=7)
    broker_agency_name = serializers.CharField(default=None, max_length=20, allow_null=True, allow_blank=True)
    broker_agency_contact = serializers.CharField(default=None, max_length=20, allow_null=True, allow_blank=True)

    basicInfo = BasicInfoSerializer(allow_null=True)
    option = OptionSubSerializer(allow_null=True)
    detailInfo = DetailInfoSerializer(allow_null=True)
