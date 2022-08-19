import random
import sqlite3
from uuid import uuid4


from tiptapProject.settings import BASE_DIR, MEDIA_ROOT

random.seed(42)

def rename_imagefile_to_uuid(roominfo, filename):
    upload_to = f'image/{roominfo}'  # 업로드 위치
    ext = filename.split('.')[-1]
    uuid = uuid4().hex
    filename = '{}.{}'.format(uuid, ext)
    return os.path.join(upload_to, filename)


if __name__ == "__main__":
    import os
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "tiptapProject.settings")
    import django
    django.setup()

    image_path = os.path.join(BASE_DIR, "image_data")
    file_list = os.listdir(image_path)

    import shutil
    conn = sqlite3.connect('db.sqlite3')
    for i in range(1,201):
        for j in range(random.randint(1,5)):
            file_url = random.choice(file_list)
            file_name = rename_imagefile_to_uuid(i,file_url);
            # print(file_name)

            source = os.path.join(image_path,file_url)
            destination = os.path.join(MEDIA_ROOT, file_name)
            # print(source)
            # print(destination)
            #os.mkdir(os.path.join(MEDIA_ROOT, "image"))
            #os.mkdir(os.path.join(MEDIA_ROOT, "image", str(i)))
            try:
                print(os.path.join(MEDIA_ROOT, "image",str(i)))
                os.mkdir(os.path.join(MEDIA_ROOT, "image",str(i)))
            except:
                pass
            shutil.copyfile(source, destination)

            q = f"""insert into app_image (image, roomInfo_id)
values ("{file_name}", {i});"""

            cur = conn.cursor()
            try:
                cur.execute(q)
                conn.commit()
            except:
                pass
            cur.close()
    conn.close()
