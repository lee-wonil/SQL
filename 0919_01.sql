select * from (select empno,ename, job from emp where sal> 3000);

--select * from (select empno,ename, job from emp)where sal> 3000; 
--�������� �ȿ��� sal �÷��� ������ ���� �ʾ� ����� �Ұ��� 
select * from emp;
select * from dept;
-- �����ȣ 7900�� ������ ����, ���� ������ ����� �̸��� ������ ã�� ���
select ename, job from emp where job = (select job from emp where empno=7900);

-- ���� Join
 select * from dept d, emp e where d.deptno=e.deptno;
 
 select e.empno, e.ename, d.dname from dept d, emp e where d.deptno=e.deptno; 

-- ������ ����
create sequence test_seq nocache;
commit;

-- ������ ��ȸ
select test_seq.nextVal from dual;
-- nextVal �������� �������� ������ 
select test_seq.currval from dual;
 
select * from testtable;
desc testtable;

-- ������ ����
insert into testtable values('testseq','1111',test_seq.nextval,sysdate);
commit;

--��ȯ�Լ�
select to_char(sysdate,'yyyy/mm/dd') ��¥, to_char(sysdate, 'yyyy.mon, day') ������ from dual;
select to_char(12345676789/1200, '$999,999,999.99')�޷�ȯ��  from dual;
select to_char(123456789,'\999,999,999') ��ȭ from dual; 
 
-- �׷�
select deptno �μ���ȣ, count(*) ����� from emp group by deptno order by count(*);

select job, count(empno) �ο���, avg(sal) ��ձ޿���, max(sal) �ְ�޿���, min(sal) �����޿���, sum(sal) �޿��հ� from emp group by job; 

select d.dname, count(e.empno) ����� from emp e, dept d where e.deptno = d.deptno group by dname having count(e.empno)>5;

select job, sum(sal) �޿��հ� from emp 
where job != 'SALES' 
group by job 
having sum(sal)>5000
 order by sum(sal) desc; 
 
-- ������
select deptno from emp union select deptno from dept;

select deptno from emp union all select deptno from dept; 

-- ������
select deptno from emp intersect select deptno from dept;

-- ������
select deptno from dept minus select deptno from emp; 