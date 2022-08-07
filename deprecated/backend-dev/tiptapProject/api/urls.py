from django.urls import path

from api import views

urlpatterns = [
    path("checklist/", views.CheckListAPIView.as_view(actions={"get": "list", "post": "create"})),
    path("checklist/<int:pk>/", views.CheckListAPIView.as_view(actions={"get": "retrieve"})),
]
