-- ��� ���̺��� ��ü �Ǽ��� ��� �Ǵ°�? 
select count(*) 
from emp;

-- �׷� �Լ��� null ���� �����ϱ� ������ �Ʒ� �Լ��� ���� 4�� ���´�. 
select count(comm) 
from emp;

-- ������ salesman �� ������� �ο����� ����Ͻÿ�. 
select count(*) 
from emp 
where job = 'SALESMAN';

-- ����, ������ �ο����� ����Ͻÿ�. 
select job, count(*) 
from emp 
group by job;

-- ���� ����� ����ϴµ� ���� �� �ο� ���� 2�� �̻��� �͸� ����Ͻÿ�.
select job, count(*) 
from emp 
group by job
having count(*) >=2;

-- ���� ����� �ٽ� ����ϴµ� ������ �ο����� ���� �ͺ��� ����Ͻÿ�. 
select job, count(*) 
from emp 
group by job
having count(*) >=2
order by count(*) desc;

-- ���� ����� �ٽ� ����ϴµ� ������ salesman�� �����ϰ� ����Ͻÿ�. 
select job, count(*) 
from emp 
where job <> 'SALESMAN'
group by job
having count(*) >=2
order by count(*) desc;

-- (OCP ���� ����) 
-- emp ���̺� ������ ������ ��� �ִ��� ����Ͻÿ�. 
select count(distinct job) 
from emp;

-- market_2022 ���̺��� ��ȸ�ϴµ� ��ȣ�� ��Ÿ������ ���ԵǾ� �ִ� �����Ϳ��� �ñ�����,
-- �ñ����� �� �Ǽ��� ����Ͻÿ�.
select �ñ�����, count(*) 
from market_2022
where ��ȣ�� like '%��Ÿ����%' 
group by �ñ�����;

-- market_2022 ���̺��� ��Ǿ����ߺз��� �� 'Ŀ����/ī��'�� ��ȣ��, ��ȣ�� �Ǽ��� 
-- ����ϴµ� ��ȣ�� �Ǽ��� ���� �ͺ��� ����Ͻÿ�. 
select ��ȣ��, count(*) 
from market_2022
where ��Ǿ����ߺз��� = 'Ŀ����/ī��'
group by ��ȣ��
order by count(*) desc;

-- ���� ����� �ٽ� ����ϴµ� ��ȣ���� ī��� �����ϰ� ����Ͻÿ�. 
select ��ȣ��, count(*) 
from market_2022
where ��Ǿ����ߺз��� = 'Ŀ����/ī��' and ��ȣ�� <> 'ī��'
group by ��ȣ��
order by count(*) desc;

-- ���� ����� �ٽ� ����ϴµ� ���ĵ� �������� ������ 10���� ����Ͻÿ�. 
select ��ȣ��, count(*) 
from market_2022
where ��Ǿ����ߺз��� = 'Ŀ����/ī��' and ��ȣ�� <> 'ī��'
group by ��ȣ��
order by count(*) desc fetch first 10 rows only;

-- ���� sql ���� (��Ÿ����, �̵��Ŀ���� ��ȣ���� �յڷ� �������� �پ��ֱ� ������ ��Ÿ����, �̵��Ŀ�Ƿ� ����) 
select case when ��ȣ�� ='%��Ÿ����%' then '��Ÿ����' 
            when ��ȣ�� ='%�̵��Ŀ��%' then '�̵��Ŀ��'
            else ��ȣ�� end as ��ȣ�� , count(*) 
from market_2022
where ��Ǿ����ߺз��� = 'Ŀ����/ī��' and ��ȣ�� <> 'ī��'
group by case when ��ȣ�� ='%��Ÿ����%' then '��Ÿ����' 
            when ��ȣ�� ='%�̵��Ŀ��%' then '�̵��Ŀ��'
            else ��ȣ�� end
order by count(*) desc fetch first 10 rows only;