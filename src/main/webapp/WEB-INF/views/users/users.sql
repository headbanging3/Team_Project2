CREATE TABLE users
(
	mem_num NUMBER(20) PRIMARY KEY,
	id VARCHAR2(20) UNIQUE NOT NULL,
	pwd VARCHAR2(20) NOT NULL,
	name VARCHAR2(20) NOT NULL,
	phone VARCHAR2(20) NOT NULL,
	email VARCHAR2(20),
	addr VARCHAR2(100),
	regdate DATE
);

CREATE SEQUENCE mem_num_seq;

DROP TABLE users CASCADE CONSTRAINT;

//관리자 아이디(root) 생성 데이터문
INSERT INTO users_tb(mem_num, mem_flag)
VALUES (mem_num_seq.NEXTVAL, 3);

INSERT INTO users(mem_num, id, pwd, name, phone, email, addr, regdate, point)
VALUES ((select mem_num from users_tb where mem_flag=3), 'root', '1234', 'root', '11', 'ppoox@naver.com', '서울',SYSDATE, 1000000000 );


