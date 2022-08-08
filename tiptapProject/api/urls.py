from django.urls import path
from api import views

urlpatterns = [
    path('rooms/', views.RoomAPIView.as_view(actions={"get": "list"})),
]
