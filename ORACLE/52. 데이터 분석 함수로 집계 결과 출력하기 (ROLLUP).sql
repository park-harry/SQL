-- 부서번호, 부서번호 별 총 월급을 출력하시오. 
select deptno, sum(sal) 
from emp 
group by deptno;

--  부서번호, 부서번호 별 총 월급을 출력하는데, 부서번호별 총 월급에 대한 전체 합계가
-- 맨 아래에 출력되게 하시오. 
select deptno, sum(sal) 
from emp 
group by rollup(deptno);

-- 통신사 뽑고, 통신사 별 인원수를 출력하는데 맨 아래에 전체 인원수가 출력되게 하시오.
select telecom, count(*)  
from emp18
group by rollup(telecom); 

-- 위의 결과에 rollup 옆에 total 이라고 쓰시오. 
select nvl(telecom,'total') as telecom, count(*)  
from emp18
group by rollup(telecom); 
