-- ������ SALESMAN�� ������ ������ ���� ������� �̸��� ������ ����Ͻÿ�. 
select ename, sal
from emp 
where sal in (select sal from emp where job = 'SALESMAN');

-- ������ SALESMAN�� ������ ������ ���� ���� ������� �̸�, ����, ������ ����Ͻÿ�. 
select ename, sal,job
from emp 
where sal not in (select sal from emp where job = 'SALESMAN');

-- �츮�� ���̺��� ������ �达�� �л���� ���̰� ���� �л����� �̸��� ���̸� ����ϴµ� 
-- ������ �达�� �л����� �����ϰ� ����Ͻÿ�. 
select ename, age 
from emp18 
where age in (select age from emp18 where ename like '��%')
and substr(ename,1,1) <> '��';


