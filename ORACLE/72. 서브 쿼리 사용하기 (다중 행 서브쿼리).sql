-- 직업이 SALESMAN인 사원들과 월급이 같은 사원들의 이름과 월급을 출력하시오. 
select ename, sal
from emp 
where sal in (select sal from emp where job = 'SALESMAN');

-- 직업이 SALESMAN인 사원들과 월급이 같지 않은 사원들의 이름, 월급, 직업을 출력하시오. 
select ename, sal,job
from emp 
where sal not in (select sal from emp where job = 'SALESMAN');

-- 우리반 테이블에서 성씨가 김씨인 학생들과 나이가 같은 학생들의 이름과 나이를 출력하는데 
-- 성씨가 김씨인 학생들은 제외하고 출력하시오. 
select ename, age 
from emp18 
where age in (select age from emp18 where ename like '김%')
and substr(ename,1,1) <> '김';


