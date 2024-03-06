-- 이름, 월급, 월급에 대한 순위를 출력하시오. (복습문제) 
select ename, sal, dense_rank() over (order by sal desc) 순위
from emp;

-- 위의 결과에서 순위가 3등과 5등만 출력하시오. 
select * 
from (select ename, sal, dense_rank() over (order by sal desc) 순위
      from emp) 
where 순위 in (3,5);

-- 직업, 이름, 월급, 순위를 출력하는데 순위가 직업별로 각각 월급이 높은 순서대로 순위를 부여하시오. (복습문제)  
select job, ename, sal, dense_rank() over (partition by job order by sal desc) 순위
from emp;

-- 위의 결과를 다시 출력한느데 각 직업별로 순위가 1등인 사원들만 출력하시오. 
select * 
from (select job, ename, sal, dense_rank() over (partition by job order by sal desc) 순위
from emp)
where 순위 = 1;

-- 부서 번호, 부서 번호별 평균 월급을 출력하시오. (복습문제) 
select deptno, round(avg(sal)) 
from emp 
group by deptno;

-- 부서 번호, 이름, 월급, 자기가 속한 부서번호의 평균 월급을 출력하시오. (복습문제) 
select deptno, ename, sal, round(avg(sal) over(partition by deptno)) as "부서별 평균 월급"
from emp;

-- 위의 결과를 다시 출력하는데 자기의 월급이 자기가 속한 부서번호의 평균 월급보다 더 큰 사원들만 출력하시오. 
select * 
from (select deptno, ename, sal, round(avg(sal) over(partition by deptno)) as "부서별 평균 월급"
    from emp)
where sal > "부서별 평균 월급";

-- (복습문제) 이름, 월급, 사원 테이블의 총 월급을 출력하시오. 
select ename, sal, sum(sal) over() as 토탈
from emp; 

-- 위의 결과를 select 절의 서브쿼리인 스칼라 서브쿼리로 수행하시오. 
select ename, sal, 
(select sum(sal) from emp) as 토탈
from emp; 

-- 이름, 월급, 직업이 salesman인 사원들의 총 월급을 출력하시오. 
select ename, sal, 
(select sum(sal) from emp where job = 'SALESMAN') as 토탈
from emp; 

-- 이름, 성별, 나이, 우리반 테이블의 평균 나이를 출력하시오. 
select ename, gender, age, (select round(avg(age)) from emp18) as 평균나이 
from emp18;

-- 이름, 월급, 직업이 salesman인 토탈월급, 직업이 salesman인 사원들의 최대월급, 
-- 직업이 salesman인 최소 월급을 출력하시오. 
select ename, sal, 
(select sum(sal) from emp where job = 'SALESMAN') AS 토탈월급, 
(select max(sal) from emp where job = 'SALESMAN') AS 최대월급, 
(select min(sal) from emp where job = 'SALESMAN') AS 최소월급
from emp;

-- (힌트 문제) 직업이 salesman인 토탈월급, 최대월급, 최소월급을 출력하시오. 
select sum(sal), max(sal), min(sal)
from emp where job = 'SALESMAN';

-- 아래와 같이 SQLP 주관식 문제를 수정해서 작성하시오. 
select ename, sal, 
(select sum(sal) ||',' || max(sal) ||',' ||min(sal) 
from emp where job = 'SALESMAN') 
from emp;

select ename,sal, 
    substr(total,1,4) as sumsal,
    substr(total,6,4) as maxsal,
    substr(total,11,4)as minsal
from 
    (select ename, sal, 
    (select sum(sal) ||',' || max(sal) ||',' ||min(sal) 
    from emp where job = 'SALESMAN') as total
    from emp);