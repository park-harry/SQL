# SQL
- table이란?
  - 행(row)과 열(column)로 이루어진 데이터 저장 단위
  - 행은 가로, 열은 세로
  
- semi-colon(;)은 SQL 종료를 뜻한다.

- SQL 문장 작성 시 주의 사항
  1. SQL은 대소문자를 구별하지 않는다.
  2. 절은 별도의 라인에 따로 작성하는 것을 권장한다.
     - select 문과 from 문을 다른 줄에 쓰는 것을 권장한다. 
  4. 탭과 들여쓰기를 사용해서 가독성을 높여주는 것을 권장한다.

- column 별칭 사용 시 주의 사항
  - SQL 사용 통틀어서 double quotation mark는 별칭 변경할 때만 사용된다.
  - column 별칭에 공백 문자나 특수 문자를 사용하려면 double quotation mark를 둘러줘야 한다.
  - column 명에 대소문자를 구분해서 출력하고 싶다면 double quotation mark를 둘러줘야 한다.
 
- order by 절은 select 문에서 맨 마지막에 기술하는 SQL이고 실행도 맨 마지막에 실행되는 구문이다.

- where 절 검색 조건에서 문자와 날짜를 검색할 때는 반드시 양쪽에 single quotation mark를 둘러줘야 한다.
  - 한국식 날짜 형식 → 년도/월/일
  - 미국식 날짜 형식 → 일/월/년도

- oracle의 연산 3가지 
  1. 산술 연산자 : * / + -
  2. 비교 연산자 : >, <, <=, >=, = , !=, <> , ^=
  3. 논리 연산자 : and, or, not
 
- 기타 비교 연산자
  1. between … and →  … 사이의 데이터를 검색할 때 사용하는 연산자
  2. in  → 여러 개의 데이터를 한 번에 검색할 때 in을 사용한다. 
  3. is null  → null 값의 확인 유무를 위해 사용된다.  
  4. like  → 텍스트 데이터의 일부를 검색할 때 사용하는 연산자

- like    
  - **like**에서 쓰는 %는 wild card → 이 자리에 뭐가 와도 상관 없다. 그 개수가 몇 개가 되던 관계 없다는 뜻이 된다.    
  - _ (under bar) -> 자릿수 하나를 나타낸다. (이 자리에 뭐가 와도 상관 없다.) 
특수 문자나 공백 문자 등을 like 로 검색하고 싶다면 escape 옵션을 사용해야 한다. 

- 논리 연산자 우선 순위 : not → and → or 

- 대소문자 변환 함수
  - UPPER → 대문자로 변환하는 함수
  - LOWER→ 소문자로 변환하는 함수
  - INITCAP→ 문자의 첫 번째 철자는 대문자, 나머지는 소문자로 변환하는 함수

- replace 함수의 업그레이드 한 함수 → regexp_replace
- sysdate : 오늘 날짜
- dual : select 절의 함수의 결과를 보기 위한 가상의 테이블
- 날짜 형식에서 RR 과 YY 의 차이
  - 81년도를 예로 들면 RR은 1981년도로 인식하고 YY는 2081년도로 인식한다.
  - RR은 현재 년도를 기준으로 가까운 년도를 인식한다.
  - YY은 현재 세기를 기준으로 년도를 인식한다.

- nvl(null value logic) 함수는 null 값 대신에 다른 값으로 치환하는 함수
  - null 값: 데이터가 없는 상태, 알 수 없는 값 (unknown)
  - **nvl(column name, null 값이면 다른 값을 대신 할 값))**
  - **nvl2(column name, null 값이 아닐 때의 출력 값, null 값일 때의 출력 값**

- decode : 프로그램 코드 없이 SQL 만으로 IF 문을 구현하는 함수이다.
  - **decode(column name, 찾을 값 1, 출력할 값 1, 찾을 값 2, 출력할 값 2, 기본 값)** → 찾을 값은 계속 쓸 수 있다.
- case
  - decode는 equal (=) 한 것들만 비교 가능하지만, case는 equal (=) 뿐만 아니라 non equal 비교도 가능하다.  
- order by 절에서 null 값을 다루는 옵션 2가지
  - **nulls last** : null 값을 맨 뒤에 출력하는 거
  - **nulls first** : null 값을 맨 앞에 출력하는 거

- regexp_substr 의 예시
  - regexp_substr(address, '[^ ]+',1,1) → 공백이 아닌 (^) 여러개 (+) 있는 것에서 첫 글자부터 읽어서 잘라내라는 뜻

- group 함수 
  1. max
  2. min
  3. avg
  4. sum
  5. count    

- group 함수 특징 
  - GROUP 함수는 NULL 값을 무시한다.
  - GROUP 함수로 조건을 줄 때는 HAVING 절을 사용해야 한다.
 
- **group by 과 partition by의 차이점**
  - group by 는 그룹 함수 (max, min, avg, count, sum)와 같이 사용하는 SQL 절
  - partition by는 데이터 분석 함수에서 사용하는 over 다음에 나오는 괄호 안에 사용하는 옵션

- 데이터 분석 함수 사용 시 주의 사항
  - 순위를 출력하는 데이터 분석함수에서는 대부분 over () 를 사용하지만 특정 값이 dense_rank() 또는 rank() 가로 안에 들어가면 over()가 아닌 within group () 을 써야 한다. 
# MSSQL 
