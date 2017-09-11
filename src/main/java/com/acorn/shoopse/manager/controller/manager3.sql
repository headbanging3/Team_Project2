SELECT * FROM users;

SELECT * FROM users_tb;
SELECT * FROM ORDER_TB;
SELECT * FROM ORDER_SUB;
SELECT * FROM PRODUCT_TB;
SELECT * FROM PRODUCT_SUB;
SELECT * FROM AGENCY;
SELECT * FROM WEARING_TB;
SELECT * FROM WEARING_SUB;
SELECT * FROM ORDER_REQ_ADDR;

INSERT INTO USERS_TB values(mem_num_seq.NEXTVAL, '1')


INSERT INTO USERS values(21, 'skarnddbsk', 'dpdlzhs1!', '서울 성북구 안암동', SYSDATE, 300, '남궁유나', '010-2123-2312', 'djsk@naver.com')
INSERT INTO USERS values(22, 'skarnddbsk1', 'dpdlzhs1!', '서울 성북구 안암동', SYSDATE, 300, '남궁유나', '010-2122-2312', 'djs1k@naver.com');
INSERT INTO USERS values(23, 'skarnddbsk2', 'dpdlzhs1!', '서울 성북구 안암동', SYSDATE, 300, '남궁유나', '010-2123-2312', 'djsk@naver.com');
INSERT INTO USERS values(24, 'skarnddbsk3', 'dpdlzhs1!', '서울 성북구 안암동', SYSDATE, 300, '남궁유나', '010-2123-2312', 'djsk@naver.com');
INSERT INTO USERS values(25, 'skarnddbsk4', 'dpdlzhs1!', '서울 성북구 안암동', SYSDATE, 300, '남궁유나', '010-2123-2312', 'djsk@naver.com');

CREATE SEQUENCE o_no_seq;

INSERT INTO order_Tb values (o_no_seq.NEXTVAL, SYSDATE, 2, 15000, 21, '1', '2');

INSERT INTO AGENCY values(1, ' 우리회사', '좋은회사', '02-100-202', 'asaocom.sjs.com', SYSDATE);

INSERT INTO WEARING_TB values(1, SYSDATE, 5, 75000, 1);

INSERT INTO PRODUCT_SUB VALUES (1, 240, 5, 21);
select * from product_sub;
INSERT INTO WEARING_SUB VALUES (1, 21, 5, 10000, 1);

INSERT INTO ORDER_SUB VALUES (2, 21, 2, 30000, 15000, 1);

INSERT INTO ORDER_REQ_ADDR VALUES (2, '남궁유나', '010-2012-1042', '서울 성북구 월곡동');









