# Backend

## Installation & Usage -  bash 사용
### 첫 세팅 
##### 1. clone -> dev branch
`git clone -b dev --single-branch https://github.com/tip-tap/backend.git`
- 클론 이후 디렉토리 이동 `cd backend/tiptapProject/`
   
##### 2. 가상환경 설치 및 설정
- 가상환경 설치 :`python -m venv 가상환경이름`
   - ex) `python -m venv myvenv`
- 가상환경 활성화
   - window : `source 가상환경이름/Scripts/activate`  - bash 사용시
       - ex) `source myvenv/Scripts/activate`
   - mac/linux : `source 가상환경이름/bin/activate`
- 라이브러리 설치
   - `pip install -r ../requirements.txt`
##### 3. 장고 설정  (현재 폴더 위치 : backend/tiptapProject )
- 데이터베이스(sqlite) 초기화
   - `python manage.py migrate`
- 관리자 등록 (원래는 안해도 돼는데, 해야 체크리스트 생성 가능해요...)
   - `python manage.py createsuperuser`   오류 발생시 ->  `winpty python manage.py createsuperuser`
       - username이랑 password만 입력하면 됨.  ex) username : admin  password 1234    password 1234

### 이후 실행
- 가상환경 활성화되어있는지 확인
- 서버 실행
- `python manage.py runserver`

### 종료
- 서버 종료
   - window : ctrl + c
   - mac/linux: 모름
- 가상환경 비활성화
   - `deactivate`



## 테스트 데이터 사용 방법

<aside>
🚧 작성중

</aside>

<aside>
💁 Q. 테스트 데이터가 왜 필요한가요? runserver 후 POST 요청을 보내 즉석에서 테스트 데이터를 생성하면 안 되나요?

A. 매물 조회 등 일부 기능의 경우 POST 요청에 응답하지 않도록 설계되었습니다. 기본 테스트 데이터를 설정하고, POST 요청에 응답하는 API에 요청을 보내 데이터를 추가하는 것은 가능합니다!

</aside>

<aside>
🏷️ Index

1. SQLite 확장 설치하기
2. Superuser 생성하기
3. 테스트 데이터 추가 쿼리 실행하기
</aside>

## SQLite 확장 설치하기



Visual Studio Code에서 아래 확장을 설치합니다.

- 이름: SQLite
ID: alexcvzz.vscode-sqlite
설명: Explore and query SQLite databases.
버전: 0.14.1
게시자: alexcvzz
VS Marketplace 링크: [https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite)

## Superuser 생성하기



backend/tiptapProject에서 terminal에 아래 명령어를 실행합니다

```bash
python manage.py createsuperuser
```

<aside>
💁 Q. 아래 주의 문구가 뜹니다. 괜찮은가요?

```bash
System check identified some issues:

WARNINGS:
...
```

A. 무시하고 진행하면 됩니다. 만약 실행이 정상적으로 되지 않는 경우 백엔드에게 문의해주세요.

</aside>

정상 실행 시 순차적으로 아래와 같이 terminal에 입력할 수 있습니다.

```bash
Username: <사용자 이름>
Email address: <사용자 이메일>
Password: <사용자 비밀번호>
Password (again): <사용자 비밀번호 확인>
```

1. Username:
원하는 이름을 입력하고 Enter를 누릅니다.
2. Email address:
아무것도 입력하지 않고 Enter를 누릅니다.
3. Password:
원하는 비밀번호를 입력하고 Enter를 누릅니다.
4. Password (again):
위에서 입력한 비밀번호를 한 번 더 입력하고 Enter를 누릅니다.

<aside>
💁 Q. 아래 주의 문구가 뜹니다. 괜찮은가요?

</aside>

```bash

```

## 테스트 데이터 추가 쿼리 실행하기



backend/tiptapProject/app/tests.sql
