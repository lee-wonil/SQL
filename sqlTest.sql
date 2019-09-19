select * from emp;
select * from dept;
desc emp;
--1
select empno, ename, sal from emp where deptno=10;
--<<2>>  �����ȣ�� 7639�λ�����̸�, �Ի�����, �μ���ȣ������϶�.
select ename, hiredate, deptno from emp where empno=7639;
--<<3>>  �̸��� ALLEN�λ���Ǹ������������϶�.
select * from emp where ename='ALLEN';
--<<4>>  �Ի����ڰ� 83/01/12�λ�����̸�, �μ���ȣ, �޿�������϶�.
select ename,deptno,sal from emp where hiredate=to_date('1983-01-12','yyyy-mm-dd');	
--<<5>>  ������ MANAGER���ƴѻ���Ǹ������������϶�.
select * from emp where job !='MANAGER'; 
--<<6>>  �Ի����ڰ� 81/04/02 ���Ŀ��Ի��ѻ��������������϶�.
select * from emp where hiredate> to_date('1981/04/02','yyyy/mm/dd');
--<<7>>  �޿��� $800�̻��λ�����̸�, �޿�, �μ���ȣ������϶�.
select ename,sal,deptno from emp where sal>=800;
--<<8>>  �μ���ȣ�� 20���̻��λ���Ǹ������������϶�.
select * from emp where deptno>=20;	
--<<9>>  ������ K�ν����ϴ»�����ٳ����̸�����������Ǹ������������϶�.
select * from emp where ename>'K%' minus select * from emp where ename like 'K%';    
--<<10>>  �Ի����ڰ� 81/12/09 ���ٸ����Ի��ѻ�����Ǹ������������϶�.
select * from emp where hiredate< to_date('1981/12/09','yyyy/mm/dd');	
--<<11>>  �Ի��ȣ�� 7698 �����۰ų�������������Ի��ȣ���̸�������϶�.
select empno,ename from emp where empno<=7698;
--<<12>>  �Ի����ڰ� 81/04/02 ���ٴʰ� 82/12/09 ���ٺ���������̸�, ����, �μ���ȣ������϶�.
select ename,sal,deptno from emp where hiredate> to_date('1981/04/02','yyyy/mm/dd')	and hiredate< to_date('1982/12/09','yyyy/mm/dd')
--<<13>>  �޿��� 1,600 ����ũ�� $3,000��������������̸�, ����, �޿�������϶�.
select ename, job, sal from emp where sal>1600 and sal<3000;	
--<<14>>  �����ȣ�� 7654�� 7782 �����̿��ǻ���Ǹ������������϶�.
select * from emp where empno between 7654 and 7782;	
--<<15>>�̸��� B�� J �����Ǹ����������������϶�.
select * from emp where ename between 'B%' and 'J%';
--<<16>>  �Ի����ڰ� 81���̿ܿ��Ի��ѻ���Ǹ������������϶�.
select * from emp where hiredate not between to_date('1981/01/01','yyyy/mm/dd') and to_date('1981/12/31','yyyy/mm/dd');
--<<17>>  ������ MANAGER�� SALESMAN�λ���Ǹ������������϶�.
select * from emp where job = 'MANAGER' or job = 'SALESMAN'; 
--<<18>>  �μ���ȣ�� 20,30���������Ѹ�������̸�, �����ȣ, �μ���ȣ������϶�.
select ename, empno,deptno from emp where deptno != 20 and deptno!=30; 	
--<<19>>  �̸��� S�ν����ϴ»���ǻ����ȣ, �̸�, �Ի�����, �μ���ȣ������϶�.
select empno,ename,hiredate,deptno from emp where ename like 'S%';
--<<20>>  �Ի����ڰ� 81�⵵�λ���Ǹ������������϶�.
select * from emp where hiredate between to_date('1981/01/01','yyyy/mm/dd') and to_date('1981/12/31','yyyy/mm/dd');	
--<<21>>  �̸��� S�ڰ����ִ»�����������������϶�.
select * from emp where ename like'%S%';
--<<22>>  �̸��� S�ν����ϰ��������ڰ� T�λ���Ǹ������������϶� (��, �̸�����ü 5�ڸ��̴�.>>
select * from emp where ename like'S___T';
--<<23>>  ù��°���ڴ°������ι�°���ڰ� A�λ��������������϶�.
select * from emp where ename like '_A%';
--<<24>>  Ŀ�̼��� NULL�λ��������������϶�.
select * from emp where comm is null;
--<<25>>  Ŀ�̼��� NULL�̾ƴѻ���Ǹ������������϶�.
select * from emp where comm is not null;
--<<26>>  �μ��� 30���μ��̰�޿��� $1,500 �̻��λ�����̸�, �μ�, ����������϶�.
select ename, deptno, sal from emp where deptno=30 and sal>=1500;
--<<27>>  �̸���ù���ڰ� K�ν����ϰų��μ���ȣ�� 30�λ���ǻ����ȣ, �̸�, �μ���ȣ������϶�.
select empno,ename,deptno from emp where deptno=30 or ename like 'K%';
--<<28>>  �޿��� $1,500�̻��̰�μ���ȣ�� 30���λ���������� MANAGER�λ��������������϶�.
select * from emp where sal>=1500 and deptno=30 and job='MANAGER';
--<<29>>  �μ���ȣ�� 30�λ���߻����ȣ�� SORT �϶�.
select * from emp where deptno=30 order by empno;
--<<30>>  �޿������������� SORT�϶�.
select * from emp order by sal desc;
--<<31>>  �μ���ȣ�� ASCENDING SORT���ı޿��������������������϶�.
select * from emp order by deptno,sal desc;
--<<32>>  �μ���ȣ�� DESCENDING NSORT�ϰ��̸������� ASCENDING SORT, �޿������� DESCENDING SORT�϶�.
select * from emp order by deptno desc, ename, sal desc;
--------------------------JOIN--------------------------
--<<1>> EMP�� DEPT TABLE�� JOIN�Ͽ��μ���ȣ, �μ���, �̸�, �޿�������϶�.
select d.deptno �μ���ȣ, d.dname �μ���, e.ename �̸� , e.sal from emp e, dept d where e.deptno=d.deptno;
--<<2>>�̸��� 'ALLEN'�λ���Ǻμ���������϶�.
select d.dname from dept d, emp e where e.ename = 'ALLEN' and d.deptno=e.deptno;
--<<3>> EMP Table�ǵ����͸�����ϵ��ش��������ѻ����ȣ�ͻ���Ǽ������Բ�����϶�.
select a.*,b.ename ����̸�,b.empno �����ȣ from emp a,emp b where a.mgr=b.empno;
--<<4>> DEPT Table ���������ϴºμ��ڵ��������ش�μ����ٹ��ϴ»�������������ʴ°���ǰ��������϶�.
select * from dept where deptno not in(select deptno from emp group by deptno having count(*)>0);           
--<<5>> 'ALLEN'�� ������ ���� ������̸�, �μ���, �޿�, ����������϶�.
select e.ename, d.dname, e.sal, e.job from dept d, emp e where e.job=(select job from emp where ename='ALLEN')and e.deptno=d.deptno;
--<<6>> 'JONES'�������ִºμ��Ǹ�����ǻ����ȣ, �̸�, �Ի�����, �޿�������϶�.
select empno,ename,hiredate,sal from emp e where deptno=(select deptno from emp where ename='JONES');  
--<<7>>��ü���������ӱݺ��ٸ�������ǻ����ȣ, �̸�, �μ���, �Ի���, ����, �޿�������϶�.
select e.empno,e.ename, d.dname, e.hiredate,d.loc, e.sal from emp e, dept d where sal> (select avg(sal) from emp ) and e.deptno=d.deptno;
--<<8>> 10���μ�������߿��� 20���μ��ǻ���������������ϴ»���ǻ����ȣ, �̸�, �μ���, �Ի���, ����������϶�.
select e.empno,e.ename, d.dname, e.hiredate,d.loc from emp e, dept d where d.deptno=e.deptno and e.deptno=10 and e.job in (select job from emp e where deptno=20);
--<<9>> 10���μ��߿��� 30���μ����¾��¾������ϴ»���ǻ����ȣ, �̸�, �μ���, �Ի�����, ����������϶�.
select e.empno,e.ename, d.dname, e.hiredate,d.loc from emp e, dept d where d.deptno=e.deptno and e.deptno=10 and e.job not in (select job from emp e where deptno=30);
--<<10>> 10���μ����ٹ��ϴ»���ǻ����ȣ, �̸�, �μ���, ����, �޿����޿�����������������϶�.
select e.empno, e.ename,d.dname,d.loc,e.sal from emp e, dept d where d.deptno=10 and d.deptno=e.deptno order by sal desc;
--<<11>> 'MARTIN'�̳� 'SCOTT'�Ǳ޿��Ͱ�������ǻ����ȣ, �̸�, �޿�������϶�.
select empno, ename, sal from emp where sal in (select sal from emp where ename='MARTIN' or ename='SCOTT');
--<<12>>�޿��� 30���μ����ְ�޿����ٳ�������ǻ����ȣ, �̸�, �޿�������϶�.
select empno, ename, sal from emp where sal> (select max(sal) from emp where deptno=30)
--<<13>>�޿��� 30���μ��������޿����ٳ�������ǻ����ȣ, �̸�, �޿�������϶�.
select empno, ename, sal from emp where sal> (select min(sal) from emp where deptno=30)

	