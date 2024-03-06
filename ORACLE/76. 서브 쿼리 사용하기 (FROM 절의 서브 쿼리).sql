-- �̸�, ����, ���޿� ���� ������ ����Ͻÿ�. (��������) 
select ename, sal, dense_rank() over (order by sal desc) ����
from emp;

-- ���� ������� ������ 3��� 5� ����Ͻÿ�. 
select * 
from (select ename, sal, dense_rank() over (order by sal desc) ����
      from emp) 
where ���� in (3,5);

-- ����, �̸�, ����, ������ ����ϴµ� ������ �������� ���� ������ ���� ������� ������ �ο��Ͻÿ�. (��������)  
select job, ename, sal, dense_rank() over (partition by job order by sal desc) ����
from emp;

-- ���� ����� �ٽ� ����Ѵ��� �� �������� ������ 1���� ����鸸 ����Ͻÿ�. 
select * 
from (select job, ename, sal, dense_rank() over (partition by job order by sal desc) ����
from emp)
where ���� = 1;

-- �μ� ��ȣ, �μ� ��ȣ�� ��� ������ ����Ͻÿ�. (��������) 
select deptno, round(avg(sal)) 
from emp 
group by deptno;

-- �μ� ��ȣ, �̸�, ����, �ڱⰡ ���� �μ���ȣ�� ��� ������ ����Ͻÿ�. (��������) 
select deptno, ename, sal, round(avg(sal) over(partition by deptno)) as "�μ��� ��� ����"
from emp;

-- ���� ����� �ٽ� ����ϴµ� �ڱ��� ������ �ڱⰡ ���� �μ���ȣ�� ��� ���޺��� �� ū ����鸸 ����Ͻÿ�. 
select * 
from (select deptno, ename, sal, round(avg(sal) over(partition by deptno)) as "�μ��� ��� ����"
    from emp)
where sal > "�μ��� ��� ����";

-- (��������) �̸�, ����, ��� ���̺��� �� ������ ����Ͻÿ�. 
select ename, sal, sum(sal) over() as ��Ż
from emp; 

-- ���� ����� select ���� ���������� ��Į�� ���������� �����Ͻÿ�. 
select ename, sal, 
(select sum(sal) from emp) as ��Ż
from emp; 

-- �̸�, ����, ������ salesman�� ������� �� ������ ����Ͻÿ�. 
select ename, sal, 
(select sum(sal) from emp where job = 'SALESMAN') as ��Ż
from emp; 

-- �̸�, ����, ����, �츮�� ���̺��� ��� ���̸� ����Ͻÿ�. 
select ename, gender, age, (select round(avg(age)) from emp18) as ��ճ��� 
from emp18;

-- �̸�, ����, ������ salesman�� ��Ż����, ������ salesman�� ������� �ִ����, 
-- ������ salesman�� �ּ� ������ ����Ͻÿ�. 
select ename, sal, 
(select sum(sal) from emp where job = 'SALESMAN') AS ��Ż����, 
(select max(sal) from emp where job = 'SALESMAN') AS �ִ����, 
(select min(sal) from emp where job = 'SALESMAN') AS �ּҿ���
from emp;

-- (��Ʈ ����) ������ salesman�� ��Ż����, �ִ����, �ּҿ����� ����Ͻÿ�. 
select sum(sal), max(sal), min(sal)
from emp where job = 'SALESMAN';

-- �Ʒ��� ���� SQLP �ְ��� ������ �����ؼ� �ۼ��Ͻÿ�. 
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