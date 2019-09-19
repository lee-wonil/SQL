select * from emp;
select * from dept;
desc emp;
--1
select empno, ename, sal from emp where deptno=10;
--<<2>>  사원번호가 7639인사람중이름, 입사일자, 부서번호를출력하라.
select ename, hiredate, deptno from emp where empno=7639;
--<<3>>  이름이 ALLEN인사람의모든정보를출력하라.
select * from emp where ename='ALLEN';
--<<4>>  입사일자가 83/01/12인사원의이름, 부서번호, 급여를출력하라.
select ename,deptno,sal from emp where hiredate=to_date('1983-01-12','yyyy-mm-dd');	
--<<5>>  직업이 MANAGER가아닌사람의모든정보를출력하라.
select * from emp where job !='MANAGER'; 
--<<6>>  입사일자가 81/04/02 이후에입사한사원의정보를출력하라.
select * from emp where hiredate> to_date('1981/04/02','yyyy/mm/dd');
--<<7>>  급여가 $800이상인사람의이름, 급여, 부서번호를출력하라.
select ename,sal,deptno from emp where sal>=800;
--<<8>>  부서번호가 20번이상인사원의모든정보를출력하라.
select * from emp where deptno>=20;	
--<<9>>  성명이 K로시작하는사람보다높은이름을가진사람의모든정보를출력하라.
select * from emp where ename>'K%' minus select * from emp where ename like 'K%';    
--<<10>>  입사일자가 81/12/09 보다먼저입사한사람들의모든정보를출력하라.
select * from emp where hiredate< to_date('1981/12/09','yyyy/mm/dd');	
--<<11>>  입사번호가 7698 보다작거나같은사람들의입사번호와이름을출력하라.
select empno,ename from emp where empno<=7698;
--<<12>>  입사일자가 81/04/02 보다늦고 82/12/09 보다빠른사원의이름, 월급, 부서번호를출력하라.
select ename,sal,deptno from emp where hiredate> to_date('1981/04/02','yyyy/mm/dd')	and hiredate< to_date('1982/12/09','yyyy/mm/dd')
--<<13>>  급여가 1,600 보다크고 $3,000보다작은사람은이름, 직무, 급여를출력하라.
select ename, job, sal from emp where sal>1600 and sal<3000;	
--<<14>>  사원번호가 7654와 7782 사이이외의사원의모든정보를출력하라.
select * from emp where empno between 7654 and 7782;	
--<<15>>이름이 B와 J 사이의모든사원의정보를출력하라.
select * from emp where ename between 'B%' and 'J%';
--<<16>>  입사일자가 81년이외에입사한사람의모든정보를출력하라.
select * from emp where hiredate not between to_date('1981/01/01','yyyy/mm/dd') and to_date('1981/12/31','yyyy/mm/dd');
--<<17>>  직무가 MANAGER와 SALESMAN인사람의모든정보를출력하라.
select * from emp where job = 'MANAGER' or job = 'SALESMAN'; 
--<<18>>  부서번호와 20,30번을제외한모든사람의이름, 사원번호, 부서번호를출력하라.
select ename, empno,deptno from emp where deptno != 20 and deptno!=30; 	
--<<19>>  이름이 S로시작하는사원의사원번호, 이름, 입사일자, 부서번호를출력하라.
select empno,ename,hiredate,deptno from emp where ename like 'S%';
--<<20>>  입사일자가 81년도인사람의모든정보를출력하라.
select * from emp where hiredate between to_date('1981/01/01','yyyy/mm/dd') and to_date('1981/12/31','yyyy/mm/dd');	
--<<21>>  이름중 S자가들어가있는사람만모든정보를출력하라.
select * from emp where ename like'%S%';
--<<22>>  이름이 S로시작하고마지막글자가 T인사람의모든정보를출력하라 (단, 이름은전체 5자리이다.>>
select * from emp where ename like'S___T';
--<<23>>  첫번째문자는관계없고두번째문자가 A인사람의정보를출력하라.
select * from emp where ename like '_A%';
--<<24>>  커미션이 NULL인사람의정보를출력하라.
select * from emp where comm is null;
--<<25>>  커미션이 NULL이아닌사람의모든정보를출력하라.
select * from emp where comm is not null;
--<<26>>  부서가 30번부서이고급여가 $1,500 이상인사람의이름, 부서, 월급을출력하라.
select ename, deptno, sal from emp where deptno=30 and sal>=1500;
--<<27>>  이름의첫글자가 K로시작하거나부서번호가 30인사람의사원번호, 이름, 부서번호를출력하라.
select empno,ename,deptno from emp where deptno=30 or ename like 'K%';
--<<28>>  급여가 $1,500이상이고부서번호가 30번인사워중직업이 MANAGER인사람의정보를출력하라.
select * from emp where sal>=1500 and deptno=30 and job='MANAGER';
--<<29>>  부서번호가 30인사람중사원번호를 SORT 하라.
select * from emp where deptno=30 order by empno;
--<<30>>  급여가많은순으로 SORT하라.
select * from emp order by sal desc;
--<<31>>  부서번호로 ASCENDING SORT한후급여가많은사람순으로출력하라.
select * from emp order by deptno,sal desc;
--<<32>>  부서번호로 DESCENDING NSORT하고이름순으로 ASCENDING SORT, 급여순으로 DESCENDING SORT하라.
select * from emp order by deptno desc, ename, sal desc;
--------------------------JOIN--------------------------
--<<1>> EMP와 DEPT TABLE을 JOIN하여부서번호, 부서명, 이름, 급여를출력하라.
select d.deptno 부서번호, d.dname 부서명, e.ename 이름 , e.sal from emp e, dept d where e.deptno=d.deptno;
--<<2>>이름이 'ALLEN'인사원의부서명을출력하라.
select d.dname from dept d, emp e where e.ename = 'ALLEN' and d.deptno=e.deptno;
--<<3>> EMP Table의데이터를출력하되해당사원에대한상관번호와상관의성명을함께출력하라.
select a.*,b.ename 상관이름,b.empno 상관번호 from emp a,emp b where a.mgr=b.empno;
--<<4>> DEPT Table 에는존재하는부서코드이지만해당부서에근무하는사람이존재하지않는경우의결과를출력하라.
select * from dept where deptno not in(select deptno from emp group by deptno having count(*)>0);           
--<<5>> 'ALLEN'의 직무와 같은 사람의이름, 부서명, 급여, 직무를출력하라.
select e.ename, d.dname, e.sal, e.job from dept d, emp e where e.job=(select job from emp where ename='ALLEN')and e.deptno=d.deptno;
--<<6>> 'JONES'가속해있는부서의모든사람의사원번호, 이름, 입사일자, 급여를출력하라.
select empno,ename,hiredate,sal from emp e where deptno=(select deptno from emp where ename='JONES');  
--<<7>>전체사원의평균임금보다많은사원의사원번호, 이름, 부서명, 입사일, 지역, 급여를출력하라.
select e.empno,e.ename, d.dname, e.hiredate,d.loc, e.sal from emp e, dept d where sal> (select avg(sal) from emp ) and e.deptno=d.deptno;
--<<8>> 10번부서사람들중에서 20번부서의사원과같은업무를하는사원의사원번호, 이름, 부서명, 입사일, 지역을출력하라.
select e.empno,e.ename, d.dname, e.hiredate,d.loc from emp e, dept d where d.deptno=e.deptno and e.deptno=10 and e.job in (select job from emp e where deptno=20);
--<<9>> 10번부서중에서 30번부서에는없는업무를하는사원의사원번호, 이름, 부서명, 입사일자, 지역을출력하라.
select e.empno,e.ename, d.dname, e.hiredate,d.loc from emp e, dept d where d.deptno=e.deptno and e.deptno=10 and e.job not in (select job from emp e where deptno=30);
--<<10>> 10번부서에근무하는사원의사원번호, 이름, 부서명, 지역, 급여를급여가많은순으로출력하라.
select e.empno, e.ename,d.dname,d.loc,e.sal from emp e, dept d where d.deptno=10 and d.deptno=e.deptno order by sal desc;
--<<11>> 'MARTIN'이나 'SCOTT'의급여와같은사원의사원번호, 이름, 급여를출력하라.
select empno, ename, sal from emp where sal in (select sal from emp where ename='MARTIN' or ename='SCOTT');
--<<12>>급여가 30번부서의최고급여보다높은사원의사원번호, 이름, 급여를출력하라.
select empno, ename, sal from emp where sal> (select max(sal) from emp where deptno=30)
--<<13>>급여가 30번부서의최저급여보다높은사원의사원번호, 이름, 급여를출력하라.
select empno, ename, sal from emp where sal> (select min(sal) from emp where deptno=30)

	