from django.contrib import admin

# Register your models here.
from app.models import Checklist, RoomInfo, Room

admin.register(Checklist)
admin.register(RoomInfo)
admin.register(Room)
