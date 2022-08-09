from django.urls import path
from api import views

urlpatterns = [
    path("checklist/", views.ChecklistAPIView.as_view(actions={"get": "list", "post": "create"})),
    path("checklist/<int:pk>/", views.ChecklistAPIView.as_view(actions={"get": "retrieve", "put":"update", "delete":"destroy"})),

    path("image/", views.ChecklistImageAPIView.as_view(actions={"post": "create", "delete" : "destroy"})),

    path('rooms/', views.RoomAPIView.as_view(actions={"get": "retrieve"})),

    path("interest/", views.InterestAPIView.as_view(actions={"get": "list", "post": "create"})),
    path("interest/<int:room_id>/", views.InterestAPIView.as_view(actions={"delete": "destroy"})),
]
