select * from users;
select * from users_tb;
SELECT * FROM order_tb;

INSERT INTO users values(15, 'skarnddbsk1', 'dpdlzhs1!', '종로', SYSDATE, 2212, '남궁유나1', '010-1234-5678', 'aaa1@naver.com');
INSERT INTO users values(16, 'skarnddbsk2', 'dpdlzhs1!', '종로', SYSDATE, 2212, '남궁유나2', '010-1235-5678', 'aaa2@naver.com');

INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');
INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1');

INSERT INTO order_tb values(o_no_seq.NEXTVAL, SYSDATE, 1, 23900, 15, '2','1');

