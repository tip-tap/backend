from django.urls import path
from api import views

urlpatterns = [
    path("checklist/", views.ChecklistAPIView.as_view(actions={"get": "list", "post": "create"})),
    path("checklist/<int:pk>/", views.ChecklistAPIView.as_view(actions={"get": "retrieve"})),

    path("image/", views.ChecklistImageAPIView.as_view(actions={"post": "create", "delete" : "destroy"})),
]
