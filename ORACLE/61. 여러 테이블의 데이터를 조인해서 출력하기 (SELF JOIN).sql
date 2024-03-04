-- 사원이름, 관리자의 이름을 출력하시오. 
select 사원.ename 사원이름, 관리자.ename 관리자이름
from emp 사원, emp 관리자 
where 사원.mgr = 관리자.empno;

-- 사원이름, 사원 월급, 관리자 이름, 관리자의 월급을 출력하는데 관리자보다 더 많은 월급을 받는 사원들만 출력하시오. 
select 사원.ename 사원이름, 사원.sal 사원월급, 관리자.ename 관리자이름, 관리자.sal 관리자월급
from emp 사원, emp 관리자 
where 사원.mgr = 관리자.empno 
and 관리자.sal < 사원.sal;

-- 사원이름, 사원 입사일, 관리자 이름, 관리자의 입사일을 출력하는데 관리자보다 먼저 사원들만 출력하시오. 
select 사원.ename 사원이름, 사원.hiredate 사원입사일, 관리자.ename 관리자이름, 관리자.hiredate 관리자입사일
from emp 사원, emp 관리자 
where 사원.mgr = 관리자.empno
and 사원.hiredate < 관리자.hiredate; 
