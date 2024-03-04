-- 부서번호, 부서 번호별로 해당하는 사원들의 이름을 가로로 출력하시오. 
select deptno, listagg(ename,',') within group (order by ename) 
from emp 
group by deptno;

-- 직업, 직업 별로 속한 사원들의 이름을 가로로 출력하시오. (이름은 abcd 순서대로 출력) 
select job, listagg(ename, ',') within group (order by ename asc) 
from emp
group by job;

-- 우리반 테이블에서 통신사, 통신사 별로 속한 학생들의 이름을 가로로 출력하는데 
-- 나이가 높은 학생들부터 출력되게 하시오.
select telecom, listagg(ename,', ') within group (order by age desc) 
from emp18 
group by telecom;

-- (서울시 공무원이 요청했던 sql) 위의 결과 + 이름 옆에 나이 출력 
select telecom, listagg(ename || '('||age||')', ', ') within group (order by age desc)
from emp18 
group by telecom;