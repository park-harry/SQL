-- ��� ���̺��� ������ ����Ͻÿ� 
select job from emp; 

-- ��� ���̺��� �ߺ��� ������ �����ϰ� ����Ͻÿ� 
select distinct job from emp; 

-- ��� ���̺��� �μ���ȣ�� ����ϴµ� �ߺ��� �����ؼ� ����Ͻÿ�. 
select distinct deptno 
from emp;

-- �츮�� ���̺� (emp18)���� ��Ż縦 ����ϴµ� �ߺ��� �����ؼ� ����Ͻÿ�. 
select distinct telecom
from emp18;

-- ��� ���̺��� �ߺ��� ���ŵ� �μ���ȣ�� ������ ����Ͻÿ�. 
select distinct deptno, job 
from emp;

-- �츮�� ���̺��� ������ ����ϴµ� �ߺ��� �����ؼ� ����Ͻÿ�. 
select distinct major
from emp18;