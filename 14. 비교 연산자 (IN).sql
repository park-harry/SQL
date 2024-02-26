-- 사원번호가 7788, 7902, 7369 번인 사원들의 사원번호와 이름을 조회하시오. 
select empno, ename
from emp 
where empno in (7788,7902,7369);

-- 직업이 SALESMAN, ANALYST 인 사원들의 이름과 직업을 출력하시오. 
select ename, job 
from emp
where job in ('SALESMAN', 'ANALYST');

-- 우리반 테이블에서 성 이 김씨, 이씨, 박씨 인 학생들의 이름과 주소를 출력하시오.
select ename, address
from emp18 
where ename like '김%' 
or ename like '이%' 
or ename like'박%';

-- 부서번호가 10번, 20번이 아닌 사원들의 이름과 부서번호를 출력하시오. 
select ename, deptno
from emp 
where deptno not in (10,20);

-- 부서번호가 10번, 20번인 사원들의 이름과 월급과 부서번호를 출력하는데 
-- 월급이 높은 사원부터 출력하시오. 
select ename, sal, deptno
from emp 
where deptno in (10,20) 
order by sal desc;