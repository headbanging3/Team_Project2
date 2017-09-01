select * from users;
select * from users_tb;
SELECT * FROM order_tb;
SELECT * FROM order_req_addr;

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

INSERT INTO ORDER_REQ_ADDR values(3, '남궁유나', '010-3360-0304', '서울시 성북구 하월곡동 실화냐');

SELECT ot.o_no, o_date, o_total_count, o_total_price, mem_num, delivery_flag, o_status, res_name, res_phone, res_address
FROM ORDER_TB ot, ORDER_REQ_ADDR ora
WHERE ot.o_no = ora.o_no
AND mem_num = 15

SELECT ot.o_no, name, id, email, phone, res_name, res_phone, res_address, ot.o_date, pt.p_name
FROM users u, order_tb ot, product_tb pt, order_req_addr ora, order_sub os
WHERE u.mem_num = ot.mem_num
AND ot.o_no = ora.o_no
AND os.p_code = pt.p_code
ORDER BY ot.o_no DESC;