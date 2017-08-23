package com.acorn.shoopse.help.dto;

public class HelpQnaListDto {
	private int qna_listnum;
	private String qna_title;
	private int qna_pdnum;
	private String qna_writer;
	private String qna_content;
	private String qna_regdate;
	
	private int startRowNum; //시작 row번호
	private int endRowNum; //끝 Row번호
	private int prevNum; //이전글의 글번호
	private int nextNum; //다음글의 글번호
	
	public HelpQnaListDto(){}

	public HelpQnaListDto(int qna_listnum, String qna_title, int qna_pdnum, String qna_writer, String qna_content,
			String qna_regdate, int startRowNum, int endRowNum, int prevNum, int nextNum) {
		super();
		this.qna_listnum = qna_listnum;
		this.qna_title = qna_title;
		this.qna_pdnum = qna_pdnum;
		this.qna_writer = qna_writer;
		this.qna_content = qna_content;
		this.qna_regdate = qna_regdate;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
	}

	public int getQna_listnum() {
		return qna_listnum;
	}

	public void setQna_listnum(int qna_listnum) {
		this.qna_listnum = qna_listnum;
	}

	public String getQna_title() {
		return qna_title;
	}

	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}

	public int getQna_pdnum() {
		return qna_pdnum;
	}

	public void setQna_pdnum(int qna_pdnum) {
		this.qna_pdnum = qna_pdnum;
	}

	public String getQna_writer() {
		return qna_writer;
	}

	public void setQna_writer(String qna_writer) {
		this.qna_writer = qna_writer;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public String getQna_regdate() {
		return qna_regdate;
	}

	public void setQna_regdate(String qna_regdate) {
		this.qna_regdate = qna_regdate;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	public int getPrevNum() {
		return prevNum;
	}

	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}

	public int getNextNum() {
		return nextNum;
	}

	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}
}
