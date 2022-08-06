
from django.contrib.auth.models import User
from django.conf import settings
from django.db import models

from app.utils import rename_imagefile_to_uuid


class BasicInfo(models.Model):
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

    basicInfo_id = models.AutoField(primary_key=True)
    # basicInfo_move_in_date = models.DateTimeField(blank=True, null=True)
    basicInfo_move_in_date = models.TextField(blank=True, null=True)
    basicInfo_type = models.CharField(
        choices=ROOM_TYPE, max_length=2, blank=True, null=True
    )
    basicInfo_deposit = models.IntegerField(blank=True, null=True)
    basicInfo_monthly_rent = models.IntegerField(blank=True, null=True)
    basicInfo_maintenance_fee = models.IntegerField(blank=True, null=True)
    basicInfo_floor = models.IntegerField(blank=True, null=True)
    basicInfo_area = models.FloatField(blank=True, null=True)
    basicInfo_number_of_rooms = models.CharField(
        choices=NUMBER_OF_ROOMS, max_length=3, blank=True, null=True
    )
    basicInfo_interior_structure = models.CharField(
        choices=INTERIOR_STRUCTURE, max_length=2, blank=True, null=True
    )
    # basicInfo_Images = models.TextField(blank=True, null=True)


class DetailInfo(models.Model):
    QUALITY_CHOICES = [
        ("A", "good"),  # 상
        ("B", "fair"),  # 중
        ("C", "poor"),  # 하
        ("", "not selected"),
    ]

    SIZE_CHOICES = [
        ("L", "large"),  # 크다
        ("M", "medium"),  # 보통이다
        ("S", "small"),  # 작다
        ("", "not selected"),
    ]

    DIRECTION_CHOICES = [
        ("E", "east"),  # 동향
        ("W", "west"),  # 서향
        ("S", "south"),  # 남향
        ("N", "north"),  # 북향
        ("", "not selected"),
    ]

    SPEED_CHOICES = [
        ("F", "fast"),  # 빠르다
        ("N", "normal"),  # 보통이다
        ("S", "slow"),  # 느리다
        ("", "not selected"),
    ]

    STRENGTH_CHOICES = [
        ("S", "strong"),  # 세다
        ("N", "normal"),  # 보통이다
        ("W", "weak"),  # 약하다
        ("", "not selected"),
    ]

    detailInfo_id = models.AutoField(primary_key=True)
    detailInfo_is_moldy = models.BooleanField(null=True)  # 곰팡이: 있다, 없다
    detailInfo_is_leak = models.BooleanField(null=True)  # 누수: 있다, 없다
    detailInfo_is_bug = models.BooleanField(null=True)  # 벌레: 있다, 없다
    detailInfo_is_crack = models.BooleanField(null=True)  # 균열: 있다, 없다
    detailInfo_soundproof = models.CharField(
        blank=True, max_length=1, choices=QUALITY_CHOICES, null=True
    )  # 방음: 상, 중, 하
    detailInfo_window_size = models.CharField(
        blank=True, max_length=1, choices=SIZE_CHOICES, null=True
    )  # 창문 크기: 크다, 보통이다, 작다
    detailInfo_main_direction = models.CharField(
        blank=True, max_length=1, choices=DIRECTION_CHOICES, null=True
    )  # 주실 방향: 동향, 서향, 남향, 북향
    detailInfo_ventilator = models.CharField(
        blank=True, max_length=1, choices=SPEED_CHOICES, null=True
    )  # 환풍기: 빠르다, 보통이다, 느리다
    detailInfo_ventilation = models.CharField(
        blank=True, max_length=1, choices=QUALITY_CHOICES, null=True
    )  # 통풍: 상, 중, 하
    detailInfo_external_noise = models.CharField(
        blank=True, max_length=1, choices=SIZE_CHOICES, null=True
    )  # 외부 소음: 크다, 보통이다, 작다
    detailInfo_water_pressure = models.CharField(
        blank=True, max_length=1, choices=STRENGTH_CHOICES, null=True
    )  # 수압: 세다, 보통이다, 약하다
    detailInfo_drainage = models.CharField(
        blank=True, max_length=1, choices=STRENGTH_CHOICES, null=True
    )  # 배수: 세다, 보통이다, 약하다
    detailInfo_hot_water = models.CharField(
        blank=True, max_length=1, choices=STRENGTH_CHOICES, null=True
    )  # 온수: 세다, 보통이다, 약하다


class Tag(models.Model):
    tag_id = models.AutoField(primary_key=True)
    tag_name = models.CharField(max_length=20)


class BrokerAgency(models.Model):
    brokerAgency_id = models.AutoField(primary_key=True)
    # brokersManner_id
    brokerAgency_name = models.CharField(max_length=20)  # 공인 중개사 이름
    brokerAgency_representative_name = models.CharField(max_length=20)  # 대표 이름
    brokerAgency_number1 = models.CharField(max_length=20)
    brokerAgency_number2 = models.CharField(max_length=20, blank=True, null=True)
    brokerAgency_location = models.TextField()  # 주소 ?/??/
    brokerAgency_company_registration_number = models.IntegerField()
    brokerAgency_registration_number = models.IntegerField()
    brokerAgency_created_at = models.DateTimeField(auto_now_add=True)
    brokerAgency_updated_at = models.DateTimeField(auto_now=True)
    user = models.ManyToManyField(settings.AUTH_USER_MODEL, default=1, blank=True)


class Option(models.Model):
    option_id = models.AutoField(primary_key=True)
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


class Room(models.Model):
    room_id = models.AutoField(primary_key=True)
    options = models.ForeignKey(Option, on_delete=models.CASCADE)
    # checklist_id = models.ForeignKey(CheckList, on_delete=models.CASCADE, null=True)
    room_update_dt = models.DateTimeField(auto_now_add=True)
    # location = models.OneToOneField(Location, on_delete=models.CASCADE)
    basicInfo = models.OneToOneField(BasicInfo, on_delete=models.CASCADE)
    #
    tag = models.ManyToManyField("Tag", blank=True)
    brokerAgency = models.ManyToManyField("BrokerAgency", blank=True)
    location_x = models.DecimalField(
        max_digits=10, decimal_places=7, null=True, blank=True
    )  # 위도
    location_y = models.DecimalField(
        max_digits=10, decimal_places=7, null=True, blank=True
    )  # 경도


class CheckList(models.Model):
    checklist_id = models.AutoField(primary_key=True)

    user = models.ForeignKey(
        settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE
    )
    room = models.ForeignKey(Room, blank=True, null=True, on_delete=models.SET_NULL)
    option = models.OneToOneField(
        Option, on_delete=models.CASCADE
    )  # 새로 추가가 아닌 update가 된다고 가정
    # location = models.OneToOneField(Location, on_delete=models.CASCADE)
    basicInfo = models.OneToOneField(BasicInfo, on_delete=models.CASCADE)
    detailInfo = models.OneToOneField(DetailInfo, on_delete=models.CASCADE)

    checklist_is_private = models.BooleanField(default=True, blank=True, null=True)
    brokerAgency_name = models.TextField(blank=True, null=True)  # 사용자 직접 입력 고려
    brokerAgency_contact = models.TextField(blank=True, null=True)  # 사용자 직접 입력 고려
    location_x = models.DecimalField(
        max_digits=10, decimal_places=7, null=True, blank=True
    )  # 위도
    location_y = models.DecimalField(
        max_digits=10, decimal_places=7, null=True, blank=True
    )  # 경도


class BrokersManner(models.Model):
    brokerManner_id = models.AutoField(primary_key=True)
    # models.M
    brokerAgency = models.ForeignKey(BrokerAgency, on_delete=models.CASCADE)
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE
    )
    brokersManner_score = models.FloatField()


class Interest(models.Model):
    interest_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE
    )
    room = models.ForeignKey(Room, on_delete=models.CASCADE)


class ConfirmedRoom(models.Model):
    confirmedRoom_id = models.AutoField(primary_key=True)
    user = models.ForeignKey(
        settings.AUTH_USER_MODEL, default=1, on_delete=models.CASCADE
    )
    room = models.ForeignKey(Room, on_delete=models.DO_NOTHING)
    checklist = models.ForeignKey(CheckList, on_delete=models.CASCADE)



class Image(models.Model):
    basicInfo = models.ForeignKey(BasicInfo, on_delete=models.CASCADE)
    image = models.ImageField(upload_to=rename_imagefile_to_uuid)
