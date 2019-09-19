-- emp : 사원테이블, dept

-- 사원 테이블 전체 검사
select * from emp;

select empno 사원번호, ename 성명 from emp; 

select count(*)from emp; 

select count(comm) from emp;

select max(sal) from emp;
select min(sal) from emp;
select avg(sal) from emp;
select sum(sal) from emp;

-- where 절
select empno 사원번호, ename 이름 from emp where deptno = 10;

select * from emp where ename ='SMITH'; 

--in
select * from emp where empno in(7900,7934);
select * from emp where empno=7900 or empno=7934;
--not in
select * from emp where empno not in(7900,7934);

-- between and
select * from emp where sal between 2000 and 4000;

select count(*) from emp where sal between 2000 and 4000;

-- 문자키워드 검색 like
select * from emp where ename like 'S%'; 
select * from emp where ename like 'M%';

select * from emp where ename like '%H';
select * from emp where ename like '%A%'

select * from emp where ename like '__A%'

select * from emp order by sal asc;
select * from emp order by sal desc;
select * from emp where sal > 2000 order by sal desc;

select empno 사번,ename 이름 from emp where deptno=30 order by ename asc;

select empno 사번,ename 이름 from emp where deptno=30 order by 2; -- 컬럼번호로 지정가능 

select empno 사번, ename 이름 from emp as e;