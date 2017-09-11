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

INSERT INTO users
VALUES (mem_num_seq.NEXTVAL, 'root', '1234', 'root', '11', 'ppoox@naver.com', '서울',SYSDATE);
INSERT INTO users
VALUES (1, 'root', '1234', 'root', '11', 'ppoox@naver.com', '서울',SYSDATE);
