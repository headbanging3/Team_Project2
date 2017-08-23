--상품문의 리스트 sql (호궁환)
CREATE TABLE qnalist
(
	qna_listnum NUMBER(20) PRIMARY KEY,
	qna_title VARCHAR2(20) NOT NULL,
	qna_pdnum NUMBER(20) NOT NULL,
	qna_writer VARCHAR2(20),
	qna_content CLOB,
	qna_regdate DATE
);

CREATE SEQUENCE qnalist_seq;



INSERT INTO qnalist(qna_listnum, qna_title, qna_pdnum, qna_writer, qna_content, qna_regdate)
								VALUES(qnalist_seq.NEXTVAL, '테스트 제목', 1179, '테스터', '즐거운 하루' ,SYSDATE);
