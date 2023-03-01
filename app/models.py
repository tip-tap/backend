from django.conf import settings
from django.db import models
from django.core.validators import RegexValidator

from .utils import rename_imagefile_to_uuid, local_time



### 공인중개사 정보 ###
class BrokerAgency(models.Model):
    brokerAgency_id = models.AutoField(primary_key=True)
    brokerAgency_name = models.CharField(max_length=20)  # 공인 중개사 이름
    brokerAgency_representative_name = models.CharField(max_length=20)  # 대표 이름
    phoneNumberRegex = RegexValidator(regex=r'^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$')
    brokerAgency_number1 = models.CharField(validators=[phoneNumberRegex], max_length=20)
    brokerAgency_number2 = models.CharField(validators=[phoneNumberRegex], max_length=20, blank=True, null=True)
    brokerAgency_location = models.TextField()  # 주소 ?/??/
    # 필드 데이터 타입 변경 Integer -> Char
    brokerAgency_company_registration_number = models.CharField(max_length=12)  # 사업자등록번호 규칙 : OOO-OO-OOOO
    brokerAgency_registration_number = models.CharField(max_length=30)  # 부동산 등록번호
    brokerAgency_created_at = models.DateTimeField(auto_now_add=True)
    brokerAgency_updated_at = models.DateTimeField(auto_now=True)
    user = models.ManyToManyField(settings.AUTH_USER_MODEL, default=1, blank=True)


class BrokersManner(models.Model):
    brokerManner_id = models.AutoField(primary_key=True)
    brokerAgency = models.ForeignKey(BrokerAgency, on_delete=models.CASCADE, related_name='brokerAgency')
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE
    )
    brokersManner_score = models.FloatField()


### 매물 및 체크리스트 정보 ###
class RoomInfo(models.Model):
    roominfo_id = models.AutoField(primary_key=True)

    ### 기본 정보 ###
    ROOM_TYPE = [
        ("J", "Jeonse"),
        ("BJ", "Ban Jeonse"),
        ("M", "Monthly Rent"),
        ("", "not selected"),
    ]

    NUMBER_OF_ROOMS = [
        ("1", "1 Room"),
        ("1.5", "1.5 Room"),
        ("2", "2 Room"),
        ("3", "3 Room"),
        ("", "not selected"),
    ]

    INTERIOR_STRUCTURE = [
        ("O", "Open"),
        ("K", "Kitchen separate Type"),
        ("V", "Veranda separate Type"),
        ("L", "Double Decker Type"),
        ("KV", "Kitchen Veranda separate Type"),
        ("", "not selected"),
    ]

    basicInfo_location_x = models.DecimalField(max_digits=10, decimal_places=7) # 위도
    basicInfo_location_y = models.DecimalField(max_digits=10, decimal_places=7) # 경도
    basicInfo_address = models.TextField(blank=True, null=True) # 주소

    # TODO: 공인중개사 어떻게 할지(공인중개사 필드를 텍스트로 두고, 매물의 경우 공인중개사 정보를 텍스트로 가져올 수 있어야 함)
    basicInfo_brokerAgency = models.TextField(blank=True, null=True) # 공인중개사
    
    basicInfo_move_in_date = models.TextField(blank=True, null=True) # 입주 가능일
    
    # TODO: 공인중개사 연락처 어떻게 할지
    phoneNumberRegex = RegexValidator(regex=r'^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$')
    basicInfo_brokerAgency_contact = models.CharField(validators=[phoneNumberRegex], max_length=20, null=True)

    basicInfo_room_type = models.CharField(
        choices=ROOM_TYPE, max_length=2, blank=True, null=True
    )
    basicInfo_deposit = models.IntegerField(blank=True, null=True) # 보증금
    basicInfo_monthly_rent = models.IntegerField(blank=True, null=True) # 월세
    basicInfo_maintenance_fee = models.IntegerField(blank=True, null=True) # 관리비
    basicInfo_floor = models.IntegerField(blank=True, null=True) # 해당층
    basicInfo_area = models.FloatField(blank=True, null=True) # 평 수
    basicInfo_number_of_rooms = models.CharField(
        choices=NUMBER_OF_ROOMS, max_length=3, blank=True, null=True
    ) # 방 수
    basicInfo_interior_structure = models.CharField(
        choices=INTERIOR_STRUCTURE, max_length=2, blank=True, null=True
    ) # 내부 구조

    ### 옵션 ###
    option_gas_stove = models.BooleanField(default=False)
    option_induction = models.BooleanField(default=False)
    option_microwave = models.BooleanField(default=False)
    option_refrigerator = models.BooleanField(default=False)
    option_washing_machine = models.BooleanField(default=False)
    option_air_conditioner = models.BooleanField(default=False)
    option_internet = models.BooleanField(default=False)
    option_tv = models.BooleanField(default=False)
    option_wifi = models.BooleanField(default=False)
    option_closet = models.BooleanField(default=False)
    option_cabinet = models.BooleanField(default=False)
    option_shoe_rack = models.BooleanField(default=False)
    option_bed = models.BooleanField(default=False)
    option_desk = models.BooleanField(default=False)
    option_chair = models.BooleanField(default=False)
    option_drying_rack = models.BooleanField(default=False)

    ### 세부 정보 ###
    QUALITY = [
        ("A", "good"),  # 상
        ("B", "fair"),  # 중
        ("C", "poor"),  # 하
        ("", "not selected"),
    ]

    SIZE = [
        ("L", "large"),  # 크다
        ("M", "medium"),  # 보통이다
        ("S", "small"),  # 작다
        ("", "not selected"),
    ]

    DIRECTION = [
        ("E", "east"),  # 동향
        ("W", "west"),  # 서향
        ("S", "south"),  # 남향
        ("N", "north"),  # 북향
        ("", "not selected"),
    ]

    SPEED = [
        ("F", "fast"),  # 빠르다
        ("N", "normal"),  # 보통이다
        ("S", "slow"),  # 느리다
        ("", "not selected"),
    ]

    STRENGTH = [
        ("S", "strong"),  # 세다
        ("N", "normal"),  # 보통이다
        ("W", "weak"),  # 약하다
        ("", "not selected"),
    ]

    detailInfo_is_moldy = models.BooleanField(null=True)  # 곰팡이: 있다, 없다
    detailInfo_is_leak = models.BooleanField(null=True)  # 누수: 있다, 없다
    detailInfo_is_bug = models.BooleanField(null=True)  # 벌레: 있다, 없다
    detailInfo_is_crack = models.BooleanField(null=True)  # 균열: 있다, 없다
    detailInfo_soundproof = models.CharField(
        blank=True, max_length=1, choices=QUALITY, null=True
    )  # 방음: 상, 중, 하
    detailInfo_window_size = models.CharField(
        blank=True, max_length=1, choices=SIZE, null=True
    )  # 창문 크기: 크다, 보통이다, 작다
    detailInfo_main_direction = models.CharField(
        blank=True, max_length=1, choices=DIRECTION, null=True
    )  # 주실 방향: 동향, 서향, 남향, 북향
    detailInfo_ventilator = models.CharField(
        blank=True, max_length=1, choices=SPEED, null=True
    )  # 환풍기: 빠르다, 보통이다, 느리다
    detailInfo_ventilation = models.CharField(
        blank=True, max_length=1, choices=QUALITY, null=True
    )  # 통풍: 상, 중, 하
    detailInfo_external_noise = models.CharField(
        blank=True, max_length=1, choices=SIZE, null=True
    )  # 외부 소음: 크다, 보통이다, 작다
    detailInfo_water_pressure = models.CharField(
        blank=True, max_length=1, choices=STRENGTH, null=True
    )  # 수압: 세다, 보통이다, 약하다
    detailInfo_drainage = models.CharField(
        blank=True, max_length=1, choices=STRENGTH, null=True
    )  # 배수: 세다, 보통이다, 약하다
    detailInfo_hot_water = models.CharField(
        blank=True, max_length=1, choices=STRENGTH, null=True
    )  # 온수: 세다, 보통이다, 약하다

    ### 이미지 ###
class Image(models.Model):
    roomInfo = models.ForeignKey(RoomInfo, on_delete=models.CASCADE)
    image = models.ImageField(upload_to=rename_imagefile_to_uuid)


class Tag(models.Model):
    tag_id = models.AutoField(primary_key=True)
    tag_name = models.CharField(max_length=20)


### 매물 ###
class Room(models.Model):
    room_id = models.AutoField(primary_key=True)
    room_created_at = models.DateTimeField(default=local_time, editable=False)
    roomInfo = models.OneToOneField(RoomInfo, on_delete=models.CASCADE)
    brokerAgency = models.ForeignKey(BrokerAgency, on_delete=models.CASCADE, blank=True, null=True)
    tag = models.ManyToManyField(Tag)


### 체크리스트 ###
class CheckList(models.Model):
    checklist_id = models.AutoField(primary_key=True)
    roomInfo = models.OneToOneField(RoomInfo, on_delete=models.CASCADE)
    is_confirmed = models.BooleanField(default=False)
    room = models.ForeignKey(Room, blank=True, null=True, on_delete=models.SET_NULL)
    user = models.ForeignKey(settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE)


### 관심 매물 ###
class Interest(models.Model):
    interest_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE
    )
    room = models.ForeignKey(Room, related_name='interest', on_delete=models.CASCADE)

    def __unicode__(self):
        return self.interest_id


### 확정 매물 ###
class ConfirmedRoom(models.Model):
    confirmedRoom_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE
    )
    room = models.ForeignKey(Room, null=True, on_delete=models.DO_NOTHING)
    checklist = models.ForeignKey(CheckList, on_delete=models.CASCADE)
