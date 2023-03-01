from django.contrib import admin

# Register your models here.
from app.models import CheckList, Room, Interest, RoomInfo, Image, Tag, BrokerAgency

# admin 페이지에서 확인할 모델 추가
admin.site.register(CheckList)
admin.site.register(Room)
admin.site.register(Interest)
admin.site.register(RoomInfo)
admin.site.register(Image)
admin.site.register(Tag)
admin.site.register(BrokerAgency)


