-- ���� ��¥ - �Ի����� �Ҽ��� ���Ĵ� ������ ����Ͻÿ�. 
select trunc(sysdate - hiredate)
from emp;

-- �츮 �� ���̺��� �̸��� ����ϰ� �¾ ��¥���� ���ñ��� �� �� �� ��Ҵ��� ����Ͻÿ�.
select ename, trunc((sysdate-birth)/7)
from emp18; 

-- �츮 �� ���̺��� �̸��� ����ϰ� �¾ ��¥���� ���ñ��� �� �� �� ��Ҵ��� ����Ͻÿ�.
select ename, trunc(months_between(sysdate,birth))
from emp18;

-- �׵��� ��ƿ� ���� 300�� �̻��� �л����� �̸��� ��ƿ� ���� ���� ����Ͻÿ�. 
select ename, trunc(months_between(sysdate,birth))
from emp18
where trunc(months_between(sysdate,birth)) >=300;

select ename, trunc((sysdate - birth)/365),
trunc(months_between(sysdate,birth)/12)
from emp18;

-- ������ �����δ� ���� ���̰� ������ ������ ����� ���� �ֱ� ������ 
-- months_between�� �� ��Ȯ�� ǥ���̴�. 