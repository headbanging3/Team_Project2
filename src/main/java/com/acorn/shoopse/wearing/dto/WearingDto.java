package com.acorn.shoopse.wearing.dto;

public class WearingDto {
	private int w_no;
	private String w_date;
	private int w_total_count;
	private int w_total_price;
	private int a_code;
	
	public WearingDto(){}

	public WearingDto(int w_no, String w_date, int w_total_count, int w_total_price, int a_code) {
		super();
		this.w_no = w_no;
		this.w_date = w_date;
		this.w_total_count = w_total_count;
		this.w_total_price = w_total_price;
		this.a_code = a_code;
	}

	public int getW_no() {
		return w_no;
	}

	public void setW_no(int w_no) {
		this.w_no = w_no;
	}

	public String getW_date() {
		return w_date;
	}

	public void setW_date(String w_date) {
		this.w_date = w_date;
	}

	public int getW_total_count() {
		return w_total_count;
	}

	public void setW_total_count(int w_total_count) {
		this.w_total_count = w_total_count;
	}

	public int getW_total_price() {
		return w_total_price;
	}

	public void setW_total_price(int w_total_price) {
		this.w_total_price = w_total_price;
	}

	public int getA_code() {
		return a_code;
	}

	public void setA_code(int a_code) {
		this.a_code = a_code;
	}

	
}
