package com.acorn.shoopse.help.dto;

public class HelpDto {
	private int mem_num;
	private String phone;
	private String email;
	private String title;
	private String content;
	private String regdate;
	private int rnum;
	private boolean state;
	private String type;
	
	private int startRowNum; //시작 row번호
	private int endRowNum; //끝 Row번호
	private int prevNum; //이전글의 글번호
	private int nextNum; //다음글의 글번호
	
	public HelpDto(){}

	public HelpDto(int mem_num, String phone, String email, String title, String content, String regdate, int rnum,
			boolean state, String type, int startRowNum, int endRowNum, int prevNum, int nextNum) {
		super();
		this.mem_num = mem_num;
		this.phone = phone;
		this.email = email;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
		this.rnum = rnum;
		this.state = state;
		this.type = type;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
	}

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public boolean isState() {
		return state;
	}

	public void setState(boolean state) {
		this.state = state;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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
