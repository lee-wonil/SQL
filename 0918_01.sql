-- 테이블 생성 
CREATE TABLE testTable(
    id varchar2(50) primary key,
    pw varchar2(50) not null,
    age number default 1,
    reg date default sysdate
);
-- 트렌젝션 완료 
commit;
-- 잘 생성되었는지 확인 : 사용자가 가진 모든 테이블 이름 검색 
SELECT table_name FROM user_tables;
 
-- 테이블 정보 확인
desc testTable; 

-- 테이블 전체 레코드 확인      alt + L 라인 실행 단축키  
select * from testTable; 

-- 레코드 추가
insert into testTable values('test', '1234', 10, sysdate);
commit; 

-- 레코드 추가 : 원하는 컬럼만 넣기
insert into testTable(id,pw) values('jsp','1111');
 
 -- 레코드 5개 추가해보세요
 insert into testTable values('연습', '2501', 10, sysdate);
 insert into testTable values('sql', '3524', 10, sysdate);
 insert into testTable values('java', '9875', 10, sysdate);
 insert into testTable values('html', '9871', 10, sysdate);
 insert into testTable values('db', '3286', 10, sysdate); 
 
-- 테이블 부분 레코드 확인
select id,pw from testtable; 

-- 레코드 수정 : 일괄 수정 
update testTable set pw = '0000';

-- 레코드 수정 : 조건으로 수정(where 절)
update testTable set pw ='1111' where id= 'test';
update testTable set pw = '2222' where age < 12;
update testTable set pw='3333' where age>10 and age<14; 

-- 레코드 삭제 : 조건으로 삭제(where 절)
delete from testTable where id = 'test1'; 

--레코드 전체삭제 
delete from testTable; 

-- 컬럼 추가
alter table testTable add(name varchar2(100)); 
commit;
desc testtable;

-- 컬럼 타입 변경
alter table testtable modify(name number); 

-- 컬럼 이름 변경
alter table testtable rename column name to height; 

-- 컬럼 삭제
alter table testtable drop column height; 

select id, pw from testTable;
--Alias 사용
select id 아이디, pw 비밀번호 from testTable; 
select id as 아이디, pw as 비밀번호 from testTable; 

--집계함수
select count(*)from testTable; 
select count(id) from testTable;