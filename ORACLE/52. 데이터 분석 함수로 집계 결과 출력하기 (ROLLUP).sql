-- �μ���ȣ, �μ���ȣ �� �� ������ ����Ͻÿ�. 
select deptno, sum(sal) 
from emp 
group by deptno;

--  �μ���ȣ, �μ���ȣ �� �� ������ ����ϴµ�, �μ���ȣ�� �� ���޿� ���� ��ü �հ谡
-- �� �Ʒ��� ��µǰ� �Ͻÿ�. 
select deptno, sum(sal) 
from emp 
group by rollup(deptno);

-- ��Ż� �̰�, ��Ż� �� �ο����� ����ϴµ� �� �Ʒ��� ��ü �ο����� ��µǰ� �Ͻÿ�.
select telecom, count(*)  
from emp18
group by rollup(telecom); 

-- ���� ����� rollup ���� total �̶�� ���ÿ�. 
select nvl(telecom,'total') as telecom, count(*)  
from emp18
group by rollup(telecom); 
