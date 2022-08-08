from django.urls import path, include
from rest_framework.routers import DefaultRouter
from api import views

urlpatterns = [
    path("interest/", views.InterestAPIView.as_view(actions={"get": "list", "post": "create"})),
    path("interest/<int:room_id>/", views.InterestAPIView.as_view(actions={"delete": "destroy"})),
]
