select * from (select empno,ename, job from emp where sal> 3000);

--select * from (select empno,ename, job from emp)where sal> 3000; 
--서브쿼리 안에서 sal 컬럼을 가지고 오지 않아 사용이 불가능 
select * from emp;
select * from dept;
-- 사원번호 7900의 직무를 꺼내, 같은 직무인 사람의 이름과 직업을 찾는 명령
select ename, job from emp where job = (select job from emp where empno=7900);

-- 조인 Join
 select * from dept d, emp e where d.deptno=e.deptno;
 
 select e.empno, e.ename, d.dname from dept d, emp e where d.deptno=e.deptno; 

-- 시퀀스 생성
create sequence test_seq nocache;
commit;

-- 시퀀스 조회
select test_seq.nextVal from dual;
-- nextVal 시퀀스에 다음값을 지정함 
select test_seq.currval from dual;
 
select * from testtable;
desc testtable;

-- 시퀀스 적용
insert into testtable values('testseq','1111',test_seq.nextval,sysdate);
commit;

--변환함수
select to_char(sysdate,'yyyy/mm/dd') 날짜, to_char(sysdate, 'yyyy.mon, day') 문자형 from dual;
select to_char(12345676789/1200, '$999,999,999.99')달러환율  from dual;
select to_char(123456789,'\999,999,999') 원화 from dual; 
 
-- 그룹
select deptno 부서번호, count(*) 사원수 from emp group by deptno order by count(*);

select job, count(empno) 인원수, avg(sal) 평균급여액, max(sal) 최고급여액, min(sal) 최저급여액, sum(sal) 급여합계 from emp group by job; 

select d.dname, count(e.empno) 사원수 from emp e, dept d where e.deptno = d.deptno group by dname having count(e.empno)>5;

select job, sum(sal) 급여합계 from emp 
where job != 'SALES' 
group by job 
having sum(sal)>5000
 order by sum(sal) desc; 
 
-- 합집합
select deptno from emp union select deptno from dept;

select deptno from emp union all select deptno from dept; 

-- 교집합
select deptno from emp intersect select deptno from dept;

-- 차집합
select deptno from dept minus select deptno from emp; 