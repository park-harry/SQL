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
# MSSQL 
