import os
from uuid import uuid4

# 이미지 필드 이름 변경 (원래 파일 이름 -> uuid)
import app
from tiptapProject.settings import MEDIA_ROOT


def rename_imagefile_to_uuid(instance, filename):
    upload_to = f'image/{instance.roomInfo.roominfo_id}'  # 업로드 위치
    ext = filename.split('.')[-1]
    uuid = uuid4().hex
    filename = '{}.{}'.format(uuid, ext)

    return os.path.join(upload_to, filename)


#  "[[0, 0], [1, 1], [2, 2]]" -> (['0', '0'], ['1', '1'], ['2', '2'])
def string_to_list(loc: str) -> tuple[list[str], list[str], list[str]]:
    locs = loc.replace("[", "").replace("]", "").replace(" ", "").split(",")
    return [locs[0], locs[1]], [locs[2], locs[3]], [locs[4], locs[5]]


def remove_image(url):
    image_url = url[7:]  # /media/image~ -> image~
    app.models.Image.objects.filter(image=image_url).get().delete()
    image = os.path.join(MEDIA_ROOT, image_url)
    os.remove(image)
