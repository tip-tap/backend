from django import forms

from app.models import *



class BasicInfoForm(forms.ModelForm):
    class Meta:
        model = BasicInfo
        fields = "__all__"


class DetailInfoForm(forms.ModelForm):
    class Meta:
        model = DetailInfo
        fields = "__all__"


class OptionForm(forms.ModelForm):

    class Meta:
        model = Option
        fields = "__all__"
#
#
# class CheckListForm(forms.ModelForm):
#     class Meta:
#         model = CheckList
#         fields = "__all__"
#
