from rest_framework import status
from rest_framework.generics import CreateAPIView, RetrieveAPIView, ListAPIView
from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet

from api.forms import BasicInfoForm, OptionForm, DetailInfoForm
from api.serializers import CheckListSerializer

from app.models import CheckList, Image


''' 일단 이 주석 부분 스킵 하시고 아래 주석 풀리는 부분 부터 확인해주세요. 
    이후에 지우겠습니다. 대충 이런식으로 할 수 있다 정도만 알고 넘어가는게 좋을 듯요... (뒤에서 합치고 그 이후에 수정한 부분도 있어서 그냥 넘어가세요) 
# ListAPIView : /checklist/ 처럼 여러개의
# class CheckListListAPIView(ListAPIView):
#     queryset = CheckList.objects.all().select_related(
#         "basicInfo", "option", "detailInfo", "location", "room"
#     )
#     serializer_class = CheckListSerializer
#
#    #
#     def get_queryset(self):
#         qs = super().get_queryset()
#         return qs.filter(user=1)  # 일단 유저 아이디를 1로 가정
#         # if self.request.user.is_authenticated:
#         #     qs = qs.filter(author=self.request.user)
#         # else:
#         #     qs = qs.none()
#         # return qs
#
#     def list(self, request, *args, **kwargs):
#         queryset = self.filter_queryset(self.get_queryset())
#
#         page = self.paginate_queryset(queryset)
#         if page is not None:
#             serializer = self.get_serializer(page, many=True)
#             return self.get_paginated_response(serializer.data)
#
#         serializer = self.get_serializer(queryset, many=True)
#         data = {"total": len(queryset), "check_list": serializer.data}
#         return Response(data)


#
# class CheckListRetrieveAPIView(RetrieveAPIView):  # RetrieveAPIView many=False
#     queryset = CheckList.objects.all().select_related(
#         "basicInfo", "option", "detailInfo", "location", "room"
#     )
#     serializer_class = CheckListSerializer
#
#     def retrieve(self, request, *args, **kwargs):
#         instance = self.get_object()
#         if instance.room is None:
#             room_id = None
#         else:
#             room_id = instance.room.pk
#
#         data = {
#             "room_id": room_id,
#             "user_id": 1,
#             "brokerAgency_name": instance.brokerAgency_name,
#             "brokerAgency_contact": instance.brokerAgency_contact,
#             "basicInfo": instance.basicInfo,
#             "option": instance.option,
#             "detailInfo": instance.detailInfo,
#             "location": instance.location,
#         }
#         serializer = self.get_serializer(instance=data)
#         return Response(serializer.data)
#
#
# class CheckListCreateAPIView(CreateAPIView):
#
#     queryset = CheckList.objects.all()
#     serializer_class = CheckListSerializer
#
#     def create(self, request, *args, **kwargs):
#
#         serializer = self.get_serializer(data=request.data)
#         serializer.is_valid(raise_exception=True)
#
#         basic_serializer = BasicInfoSerializer(data=request.data.get("basicInfo"))
#         basic_serializer.is_valid(raise_exception=True)
#
#         option_serializer = OptionSubSerializer(data=request.data.get("option"))
#         option_serializer.is_valid(raise_exception=True)
#
#         detail_serializer = DetailInfoSerializer(data=request.data.get("detailInfo"))
#         detail_serializer.is_valid(raise_exception=True)
#
#         location_serializer = LocationSerializer(data=request.data.get("location"))
#         location_serializer.is_valid(raise_exception=True)
#
#         room_id = request.data.get("room_id")
#         user_id = 1
#         brokerAgency_name = request.data.get("brokerAgency_name")
#         brokerAgency_contact = request.data.get("brokerAgency_contact")
#         basic = basic_serializer.save()
#         option = option_serializer.save()
#         detail = detail_serializer.save()
#         location = location_serializer.save()
#
#         CheckList(
#             checklist_is_private=True,
#             brokerAgency_name=brokerAgency_name,
#             brokerAgency_contact=brokerAgency_contact,
#             room_id=room_id,
#             user_id=user_id,
#             basicInfo=basic,
#             option=option,
#             detailInfo=detail,
#             location=location,
#         ).save()
#         return Response(
#             serializer.data,
#             status=status.HTTP_201_CREATED,  # headers=headers
#         )


#
# class CheckListAPIView(ModelViewSet):
#     queryset = CheckList.objects.all()
#     serializer_class = CheckListSerializer
#
#     def retrieve(self, request, *args, **kwargs):
#         instance = self.get_object()
#         if instance.room is None:
#             room_id = None
#         else:
#             room_id = instance.room.pk
#
#         data = {
#             "room_id": room_id,
#             "user_id": 1,
#             "brokerAgency_name": instance.brokerAgency_name,
#             "brokerAgency_contact": instance.brokerAgency_contact,
#             "basicInfo": instance.basicInfo,
#             "option": instance.option,
#             "detailInfo": instance.detailInfo,
#             "location": instance.location,
#         }
#         serializer = self.get_serializer(instance=data)
#         return Response(serializer.data)
#

#
#     def get_queryset(self):
#         qs = super().get_queryset()
#         return qs.filter(user=1)  # 일단 유저 아이디를 1로 가정
#         # if self.request.user.is_authenticated:
#         #     qs = qs.filter(author=self.request.user)
#         # else:
#         #     qs = qs.none()
#         # return qs
#
#     def list(self, request, *args, **kwargs):
#         queryset = self.filter_queryset(self.get_queryset())
#
#         page = self.paginate_queryset(queryset)
#         if page is not None:
#             serializer = self.get_serializer(page, many=True)
#             return self.get_paginated_response(serializer.data)
#
#         serializer = self.get_serializer(queryset, many=True)
#         data = {"total": len(queryset), "check_list": serializer.data}
#         return Response(data)

# from rest_framework.parsers import MultiPartParser, FormParser
'''

#####################################################################################################################################

# 분리해서 작성했던 ListAPIView, CreateAPIView, RetrieveAPIView를 합침 -> ModelViewSet을 상속받고 오버라이딩했던 함수들을 그대로 가져오면 됨.
'''

    ListAPIView = GenericViewSet + ListModelMixin (get -> list)               : list     매서드 오버라이드 해서 재정의
    RetrieveAPIView = GenericViewSet + RetrieveModelMixin (get -> retrieve)   : retrieve 메서드 오버라이드 해서 재정의
    CreateAPIView = GenericViewSet + CreateModelMixin (post -> create)        : create   메서드 오버라이드 해서 재정의
    
    ModelViewSet = GenericViewSet + CreateModelMixin + RetrieveModelMixin + UpdateModelMixin + DestroyModelMixin + ListModelMixin
        -> list, retrieve, create, 그 외에도 update, partial_update, destroy을 기본적으로 제공. 재정의 해도 됨.
        
    한번씩 직접 클래스 찾아 들어가서 살펴보는 것을 추천함.

'''
class CheckListAPIView(ModelViewSet):
    # .select_related는 안써도 됨. (쓴 이유는 쿼리 날라가는 갯수가 조금 줄었음.)
    queryset = CheckList.objects.all().select_related("basicInfo", "option", "detailInfo", "room")
    serializer_class = CheckListSerializer


    # RetrieveAPIView  -> GET Method -> /api/v1/checklist/
    def retrieve(self, request, *args, **kwargs):
        instance = self.get_object()

        if instance.room is None:
            room_id = None
        else:
            room_id = instance.room.pk

        data = {
            "room_id": room_id,
            "user_id": 1,
            "brokerAgency_name": instance.brokerAgency_name,
            "brokerAgency_contact": instance.brokerAgency_contact,
            "basicInfo": instance.basicInfo,
            "option": instance.option,
            "detailInfo": instance.detailInfo,
            "location_x": instance.location_x,
            "location_y": instance.location_y,
        }
        serializer = self.get_serializer(instance=data)
        return Response(serializer.data)

    def get_queryset(self):
        qs = super().get_queryset()
        return qs.filter(user=1)  # 일단 유저 아이디를 1로 가정. 이후 인증 인가 관련하여 진행하면 그때 처리.
        # if self.request.user.is_authenticated:
        #     qs = qs.filter(author=self.request.user)
        # else:
        #     qs = qs.none()
        # return qs


    #ListAPIView  -> GET Method -> /api/v1/checklist/
    def list(self, request, *args, **kwargs):
        queryset = self.filter_queryset(self.get_queryset())

        page = self.paginate_queryset(queryset)
        if page is not None:
            serializer = self.get_serializer(page, many=True)
            return self.get_paginated_response(serializer.data)

        serializer = self.get_serializer(queryset, many=True)
        data = {"total": len(queryset), "check_list": serializer.data}
        return Response(data)



    # 폼 데이터 형식으로 데이터가 오는데, serializer 이용해서 어떻게 해야 하는지 잘 모르겠어서 일단 모델 폼 이용해서 했습니다.
    # serializer 써서 하는 방법 아시면 수정해주세요...
    # CreateAPIView -> POST Method -> /api/v1/checklist/
    def create(self, request, *args, **kwargs):
        basic = None
        option = None
        detail = None

        #전송 받은 데이터 저장
        basicForm = BasicInfoForm(request.POST)
        if basicForm.is_valid():
            basic = basicForm.save()

        optionForm = OptionForm(request.POST)
        if optionForm.is_valid():
            option = optionForm.save()

        detailForm = DetailInfoForm(request.POST)
        if detailForm.is_valid():
            detail = detailForm.save()



        # CheckList를 테이블에 저장
        location_x = request.POST["location_x"]
        location_y = request.POST["location_y"]
        brokerAgency_name = request.POST.get('brokerAgency_name')
        brokerAgency_contact = request.POST.get("brokerAgency_contact")
        check = CheckList(user_id=1, location_x=location_x, location_y=location_y, brokerAgency_name = brokerAgency_name, brokerAgency_contact = brokerAgency_contact,
                          basicInfo=basic, option=option, detailInfo=detail)
        check.save()

        # form에서 전송된 이미지 파일들을 이미지 테이블에 저장
        images = request.FILES.getlist("image")
        for i in images:
            image = Image(basicInfo=basic, image=i)
            image.save()

        # 응답시 전송해 줄 데이터
        response_data = {
            "message": "등록 성공",
            "checklist_id": check.checklist_id
        }

        return Response(
            response_data,
            status=status.HTTP_201_CREATED,  # headers=headers
        )

# 이 부분은 앞서 실패했다고 말한 방법 (serializer 사용)
#     def create(self, request, *args, **kwargs):
#
#         serializer = self.get_serializer(data=request.data)
#         serializer.is_valid(raise_exception=True)
#
#         basic_serializer = BasicInfoSerializer(data=request.data.get("basicInfo"))
#         basic_serializer.is_valid(raise_exception=True)
#
#         option_serializer = OptionSubSerializer(data=request.data.get("option"))
#         option_serializer.is_valid(raise_exception=True)
#
#         detail_serializer = DetailInfoSerializer(data=request.data.get("detailInfo"))
#         detail_serializer.is_valid(raise_exception=True)
#
#         location_serializer = LocationSerializer(data=request.data.get("location"))
#         location_serializer.is_valid(raise_exception=True)
#
#         room_id = request.data.get("room_id")
#         user_id = 1
#         brokerAgency_name = request.data.get("brokerAgency_name")
#         brokerAgency_contact = request.data.get("brokerAgency_contact")
#         basic = basic_serializer.save()
#         option = option_serializer.save()
#         detail = detail_serializer.save()
#         location = location_serializer.save()
#
#         CheckList(
#             checklist_is_private=True,
#             brokerAgency_name=brokerAgency_name,
#             brokerAgency_contact=brokerAgency_contact,
#             room_id=room_id,
#             user_id=user_id,
#             basicInfo=basic,
#             option=option,
#             detailInfo=detail,
#             location=location,
#         ).save()
#         return Response(
#             serializer.data,
#             status=status.HTTP_201_CREATED,  # headers=headers
#         )
