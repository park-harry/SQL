-- �����ȣ�� 7788, 7902, 7369 ���� ������� �����ȣ�� �̸��� ��ȸ�Ͻÿ�. 
select empno, ename
from emp 
where empno in (7788,7902,7369);

-- ������ SALESMAN, ANALYST �� ������� �̸��� ������ ����Ͻÿ�. 
select ename, job 
from emp
where job in ('SALESMAN', 'ANALYST');

-- �츮�� ���̺��� �� �� �达, �̾�, �ھ� �� �л����� �̸��� �ּҸ� ����Ͻÿ�.
select ename, address
from emp18 
where ename like '��%' 
or ename like '��%' 
or ename like'��%';

-- �μ���ȣ�� 10��, 20���� �ƴ� ������� �̸��� �μ���ȣ�� ����Ͻÿ�. 
select ename, deptno
from emp 
where deptno not in (10,20);

-- �μ���ȣ�� 10��, 20���� ������� �̸��� ���ް� �μ���ȣ�� ����ϴµ� 
-- ������ ���� ������� ����Ͻÿ�. 
select ename, sal, deptno
from emp 
where deptno in (10,20) 
order by sal desc;