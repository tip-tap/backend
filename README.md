# Backend

## Notice
**2022.08.07**  
데이터베이스 설계 수정 전 프로젝트는 'deprecated' 디렉토리에 있습니다.


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