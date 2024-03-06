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
  - 숫자를 별칭으로 출력하면 double quotation mark를 둘러줘야 한다. 
 
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
  - listagg 함수는 그룹 함수처럼 group by 절을 사용해야 한다. 또한, within group 을 사용해야 한다.  
  - within group을 써야 하는 경우 2가지 
    1. rank(값) within group (order by 컬럼명)
    2. listagg(컬럼명, ',') within group (order by 컬럼명)
  - lag(전 행 출력) 또는 lead (다음 행 출력)을 사용할 때, 1을 쓰면 전행, 2를 전전 행이 출력된다.
    - ex) lag(empno,1) over (order by empno asc) as 전행

- pivot문 사용 시 주의 사항
  - from 절에 괄호를 열고 필요한 column 만 선택한다.
  - 필요한 column을 선택할 때, 그룹 함수는 사용하지 말고 column명만 사용한다.
  - from 절의 괄호 안에 함수는 사용할 수 있지만 반드시 column 별칭을 써줘야 한다.
  - ex ) select * 
        from (select deptno, sal from emp)
        pivot(sum(sal) for deptno in (10,20,30));
- unpivot 사용 시 주의 사항
  - from 절에는 table 이름만 작성한다.
  - unpivot 다음에 나오는 괄호 안에 별칭은 마음대로 작성 가능하다.
  - in 다음에 나오는 괄호 안에 column 이름을 작성할 때 single quotation mark 사용하지 않는다. 
  - ex) select * 
        from order2 
        unpivot (갯수 for 아이템 in (bicycle, camera, notebook));

  - SQL window 문
    - order by 컬럼명 **asc/desc rows/range** between unbounded **preceding/following** and current row
      - row : 행을 기준으로 누적치를 출력, range : 범위를 기준으로 누적치를 출력 (날짜처럼 범위를 줄 수 있는 경우일 때, range를 사용하면 범위에 대한 누적 데이터가 출력 된다.) 
      - unbounded preceding : 맨 처음 행, unbounded following : 맨 마지막 행

- ratio_to_report 함수와 cume_dist 함수의 차이
  - ratio_to_report : 전체 sum(컬럼명) 값에 대한 행 별 컬럼 값의 백분율을 소수점으로 구한다.
  - cume_dist : 전체 건수의 값에 대한 행 별 값의 백분율을 소수점으로 구한다. 

- rollup 함수와 cube 함수 
  - rollup 함수 안의 column의 개수 + 1 개 만큼 집계한 결과 그룹이 출력이 된다.
  - cube 함수는 rollup 함수와 다르게 집계 결과를 맨 위에 출력한다. 
    - cube의 공식 : 2^n (2의 n승, n = column의 개수)
      
- row_number 함수와 rownum 함수의 차이
  - row_number() 함수는 정렬된 결과에 번호를 numbering 할 때 사용한다.
  - rownum 은 쿼리문의 출력 결과에 번호를 numbering 할 떄 사용한다.
    - rownum을 주로 사용하는 경우는 어떤 큰 테이블을 일부만 보고 싶을 때 사용한다. 
    - rownum은 첫 번쨰 값만 독단적으로 볼 수 있다. 앞에 있는 번호들을 전부 봐야 특정 번호의 rownum 데이터를 볼 수 있다.
    - 특정 번호의 rownum만 보고 싶다면, 서브쿼리를 사용하여 서브 쿼리 안에 있는 rownum에 별칭을 주어야 한다.

- 오라클 조인 문법과 1999 ANSI 조인 문법
  - **오라클 조인 문법**    
    select e.ename, d.loc
    from emp e ,dept d
    where e.deptno = d.deptno;
  - **1999 ANSI 조인 문법**     
    select e.ename, d.loc
    from emp e join dept d
    on (e.deptno = d.deptno);

- Join 함수
  - (+) : outer join sign
    - (+) 는 데이터가 모자란 쪽에다가 붙인다.
    - (+) 는 한쪽에만 쓸 수 있다. 양쪽 다 보려면 full outer join을 사용해야 한다.
    - left/right outer joing 사용 시, 반대 쪽에다가 (+) 를 붙인다.
  
  - Natural Join
    -   NATURAL JOIN  사용 시, 오라클이 알아서 조인 조건을 찾아서 조인해준다.
    -   NATURAL 조인이 가능하려면 두 테이블에 서로 조인하려는 공통된 column이 있어야 하고 **두 column의 데이터 유형이 서로 동일해야 한다.** 

- 집합 연산자 (union all, union) 사용 시 주의 사항
    - 위의 sql과 아래의 sql의 column 의 개수가 동일해야 한다.
    - 위의 sql과 아래의 sql의 column 의 데이터 유형이 동일해야 한다.
    - 위의 sql의 column 명으로 결과가 출력이 된다.
    - order by 절은 맨 아래에 있는 쿼리문에만 사용할 수 있다.
    - UNION ALL : 중복 값 제거가 안 되고 모두 출력된다.
    - UNION : 중복 값이 제거된다. 

- select 문의 6가지 절에서 서브 쿼리로 쓸 수 있는 절
  - select 서브 쿼리 사용 가능 ( scalar subquery )
    - 스칼라 서브 쿼리는 딱 1개의 값만 리턴 할 수 있다. 
  - from 서브 쿼리 사용 가능 ( in line view )
  - where 서브 쿼리 사용 가능 ( sub query )   
  - group by   X
  - having  서브 쿼리 사용 가능 ( scalar subquery )    
  - order by 서브 쿼리 사용 가능 ( scalar subquery )

- commit의 종류 2가지
  - 명시적 commit : commit 명령어를 직접 수행한 경우
  - 암시적 commit : DDL, DCL 명령어를 수행했을 때, 정상 종료 했을 떄
    - DDL : create, alter, drop, truncate, rename
    - DCL : grant, revoke
    - 정상 종료: exit 

# MSSQL 
