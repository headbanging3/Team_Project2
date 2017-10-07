package com.acorn.shoopse.wearing.dto;

public class WearingSubDto {
	private int w_no;
	private String p_code;
	private int p_no;
	private int w_count;
	private int w_price;
	private String p_size;
	private String p_stock;
	
	public WearingSubDto(){}

	public WearingSubDto(int w_no, String p_code, int p_no, int w_count, int w_price, String p_size, String p_stock) {
		super();
		this.w_no = w_no;
		this.p_code = p_code;
		this.p_no = p_no;
		this.w_count = w_count;
		this.w_price = w_price;
		this.p_size = p_size;
		this.p_stock = p_stock;
	}

	public int getW_no() {
		return w_no;
	}

	public void setW_no(int w_no) {
		this.w_no = w_no;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getW_count() {
		return w_count;
	}

	public void setW_count(int w_count) {
		this.w_count = w_count;
	}

	public int getW_price() {
		return w_price;
	}

	public void setW_price(int w_price) {
		this.w_price = w_price;
	}

	public String getP_size() {
		return p_size;
	}

	public void setP_size(String p_size) {
		this.p_size = p_size;
	}

	public String getP_stock() {
		return p_stock;
	}

	public void setP_stock(String p_stock) {
		this.p_stock = p_stock;
	}

	
	
}
