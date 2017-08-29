select * from users;
SELECT * FROM USERS_TB;
select * from ORDER_TB;
SELECT SYSDATE FROM dual;
select * from product_tb;

create sequence o_no_seq;

INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
/* users TABLE mem_num, id, pwd, addr, regdate, point, name, phone, email */
INSERT INTO users values(2, 'skarnddbsk1', 'dpdlzhs1!', '종로', SYSDATE, 2212, '남궁유나1', '010-1234-5678', 'aaa1@naver.com');

INSERT INTO ORDER_TB values(o_no_seq.NEXTVAL, SYSDATE, 1, 23900, 1, '1', '2');

commit;

