from django.urls import path
from api import views

urlpatterns = [
    path("checklist/", views.ChecklistAPIView.as_view(actions={"get": "list", "post": "create"})),
    path("checklist/<int:pk>/", views.ChecklistAPIView.as_view(actions={"get": "retrieve"})),
]
