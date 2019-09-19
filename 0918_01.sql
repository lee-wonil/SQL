-- ���̺� ���� 
CREATE TABLE testTable(
    id varchar2(50) primary key,
    pw varchar2(50) not null,
    age number default 1,
    reg date default sysdate
);
-- Ʈ������ �Ϸ� 
commit;
-- �� �����Ǿ����� Ȯ�� : ����ڰ� ���� ��� ���̺� �̸� �˻� 
SELECT table_name FROM user_tables;
 
-- ���̺� ���� Ȯ��
desc testTable; 

-- ���̺� ��ü ���ڵ� Ȯ��      alt + L ���� ���� ����Ű  
select * from testTable; 

-- ���ڵ� �߰�
insert into testTable values('test', '1234', 10, sysdate);
commit; 

-- ���ڵ� �߰� : ���ϴ� �÷��� �ֱ�
insert into testTable(id,pw) values('jsp','1111');
 
 -- ���ڵ� 5�� �߰��غ�����
 insert into testTable values('����', '2501', 10, sysdate);
 insert into testTable values('sql', '3524', 10, sysdate);
 insert into testTable values('java', '9875', 10, sysdate);
 insert into testTable values('html', '9871', 10, sysdate);
 insert into testTable values('db', '3286', 10, sysdate); 
 
-- ���̺� �κ� ���ڵ� Ȯ��
select id,pw from testtable; 

-- ���ڵ� ���� : �ϰ� ���� 
update testTable set pw = '0000';

-- ���ڵ� ���� : �������� ����(where ��)
update testTable set pw ='1111' where id= 'test';
update testTable set pw = '2222' where age < 12;
update testTable set pw='3333' where age>10 and age<14; 

-- ���ڵ� ���� : �������� ����(where ��)
delete from testTable where id = 'test1'; 

--���ڵ� ��ü���� 
delete from testTable; 

-- �÷� �߰�
alter table testTable add(name varchar2(100)); 
commit;
desc testtable;

-- �÷� Ÿ�� ����
alter table testtable modify(name number); 

-- �÷� �̸� ����
alter table testtable rename column name to height; 

-- �÷� ����
alter table testtable drop column height; 

select id, pw from testTable;
--Alias ���
select id ���̵�, pw ��й�ȣ from testTable; 
select id as ���̵�, pw as ��й�ȣ from testTable; 

--�����Լ�
select count(*)from testTable; 
select count(id) from testTable;