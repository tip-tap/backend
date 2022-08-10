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
   - mac/linux: cmd + c
- 가상환경 비활성화
   - `deactivate`



## Test

### 목차
[0. 테스트 데이터가 왜 필요한가요?](###테스트-데이터가-왜-필요한가요?)  
[1. Superuser 생성하기](###Superuser-생성하기)  
[2. SQLite 확장 설치하기](###SQLite-확장-설치하기)  
[3. SQLite DB 조회 활성화하기](###SQLite-DB-조회-활성화하기)  
[4. 테스트 데이터 SQLite에 추가하기](###테스트-데이터-DB에-추가하기)

### 테스트 데이터가 왜 필요한가요?

Q. 테스트 데이터가 왜 필요한가요? 서버 실행 후 POST 요청을 보내 즉석에서 테스트 데이터를 생성하면 안 되나요?

A. POST 요청에 응답하는 API에 요청을 보내 데이터를 추가하는 것은 가능합니다. 그러나 매물 조회 등 서비스 이용에 필요한 필수 기능 중 일부는 **POST 요청에 응답하지 않도록** 설계되었습니다. 미리 저장된 테스트 데이터를 활용하여 원활하게 테스트를 진행할 수 있도록 테스트 데이저를 제공합니다.

### Superuser 생성하기
⚠️ 이미 superuser를 생성했다면, 이 단계는 건너뛰세요.

```backend/tiptapProject```에서 terminal에 아래 명령어를 실행합니다.

```bash
python manage.py createsuperuser
```

<details>
<summary>😞 System check identified some issues: WARNING</summary>

Q. 아래 주의 문구가 뜹니다. 괜찮은가요?

```bash
System check identified some issues:
WARNINGS:
...
```

A. 무시하고 진행하면 됩니다. 만약 실행이 정상적으로 되지 않는 경우 백엔드에게 문의해주세요.

</details>

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

### SQLite 확장 설치하기

Visual Studio Code에서 아래 확장을 설치합니다.

이름: SQLite  
ID: alexcvzz.vscode-sqlite  
설명: Explore and query SQLite databases.  
버전: 0.14.1  
게시자: alexcvzz  
VS Marketplace 링크: [https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite](https://marketplace.visualstudio.com/items?itemName=alexcvzz.vscode-sqlite)

### SQLite DB 조회 활성화하기

vscode에서 ```backend/tiptapProject/db.sqlite3``` 파일을 엽니다.

'파일이 이진이거나 지원되지 않는 텍스트 인코딩을 사용하기 때문에 편집기에서 표시되지 않습니다.' 주의 문구가 뜰 경우 '계속 열기'를 클릭하고 '텍스트 편집기'를 선택합니다.

![SQLite-DB-조회-활성화하기-1](https://github.com/4-002602/tip-tap-backend-readme-images/blob/main/SQLite-DB-조회-활성화하기-1.png)

![SQLite-DB-조회-활성화하기-2](https://github.com/4-002602/tip-tap-backend-readme-images/blob/main/SQLite-DB-조회-활성화하기-2.png)

<details>
<summary>😞 알 수 없는 글자들이 보여요</summary>

Q. 위 안내를 따라했는데, ```backend/tiptapProject/db.sqlite3``` 파일이 열리면서 알 수 없는 글자들이 보여요.

![SQLite-DB-조회-활성화하기-3](https://github.com/4-002602/tip-tap-backend-readme-images/blob/main/SQLite-DB-조회-활성화하기-3.png)

A. 정상적인 출력입니다. 이어서 아래 작업을 수행하면 됩니다.

</details>

파일을 닫고, 탐색기의 ```backend/tiptapProject/db.sqlite3``` 위에 오른쪽 마우스 클릭 후 'Open Database'를 클릭합니다.

![SQLite-DB-조회-활성화하기-4](https://github.com/4-002602/tip-tap-backend-readme-images/blob/main/SQLite-DB-조회-활성화하기-4.png)

탐색기 하단에 'SQLITE EXPLORER' 기능이 추가됩니다. 해당 기능을 사용해 테이블을 조회하고 쿼리를 작성하여 DB에 반영할 수 있습니다.

![SQLite-DB-조회-활성화하기-5](https://github.com/4-002602/tip-tap-backend-readme-images/blob/main/SQLite-DB-조회-활성화하기-5.png)

### 테스트 데이터 추가 쿼리 실행하기

vscode에서 ```backend/tiptapProject/app/tests.sql``` 파일을 엽니다.

열린 파일 위에서 오른쪽 마우스를 클릭하고 'Run Query'를 클릭합니다.

![테스트-데이터-추가-쿼리-실행하기-1](https://github.com/4-002602/tip-tap-backend-readme-images/blob/main/테스트-데이터-추가-쿼리-실행하기-1.png)

<details>
<summary>😞 오류가 발생하면서 적용되지 않은 쿼리가 있어요</summary>

Q. 'Run Query'를 클릭해 sql 파일을 실행했는데, 오류가 발생하여 DB를 조회하니 모든 쿼리가 반영되지 않은듯합니다.

A. 잘못된 쿼리가 포함되어 있을 가능성이 높습니다. 백엔드에게 문의해주세요.

</details>

테스트 데이터가 DB에 추가되었습니다.
