INSERT INTO product_kind(p_kind_code, kind_name) VALUES('01','나이키');
INSERT INTO product_kind(p_kind_code, kind_name) VALUES('02','아이다스');
INSERT INTO product_kind(p_kind_code, kind_name) VALUES('03','뉴발란스');
INSERT INTO product_kind(p_kind_code, kind_name) VALUES('04','기타');

SELECT * FROM product_kind;

DELETE FROM product_kind WHERE p_kind_code='0101';

INSERT INTO product_kind(p_kind_code, parent_kind_code, kind_name) 
VALUES		('0101', (SELECT p_kind_code FROM product_kind WHERE p_kind_code='01'), '조던');
INSERT INTO product_kind(p_kind_code, parent_kind_code, kind_name) 
VALUES		('0102', (SELECT p_kind_code FROM product_kind WHERE p_kind_code='01'), '맥스');
INSERT INTO product_kind(p_kind_code, parent_kind_code, kind_name) 
VALUES		('0103', (SELECT p_kind_code FROM product_kind WHERE p_kind_code='01'), '포스');



CREATE SEQUENCE p_code_seq;

INSERT INTO product_tb
VALUES (
			p_code_seq.NEXTVAL,
			'베어맥스 트리플 블랙', 
			'나이키', 
			239000, 
			2390, 
			SYSDATE,
			'0101',
			'comment', 
			'detail_comment',
			'nike_beypermax.jpg'
		);
		
SELECT * FROM product_tb;



CREATE TABLE product_kind
(
	p_kind_code VARCHAR2(4) PRIMARY KEY,
	kind_name VARCHAR2(15)
);

CREATE TABLE product_tb
(
	p_code VARCHAR2(6) PRIMARY KEY,
	p_kind_code VARCHAR2(4) CONSTRAINTS p_kind_code
		REFERENCES product_kind(p_kind_code),
	p_name VARCHAR2(100),
	p_brand VARCHAR2(100),
	p_price NUMBER,
	point NUMBER,
	p_regdate DATE,
	p_comment VARCHAR2(50),
	p_detail_comment CLOB,
 	p_main_img VARCHAR2(100)

);



CREATE SEQUENCE product_kind_seq;
CREATE SEQUENCE product_tb_seq;

INSERT INTO product_kind
VALUES ( 
			product_kind_seq.NEXTVAL,
			'NIKE'
		);

INSERT INTO product_tb
VALUES (
			product_tb_seq.NEXTVAL,
			(SELECT p_kind_code FROM product_kind WHERE p_kind_code=1),
			'베어맥스 트리플 블랙',	'나이키', 239000, 2390, SYSDATE, 'comment', 'detail_comment','nike_beypermax.jpg'
		);

	