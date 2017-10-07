package com.acorn.shoopse.products.dto;

public class ProductsSubDto {
	private int p_no;
	private String p_code;
	private String p_size;
	private String p_stock;
	
	public ProductsSubDto(){}

	public ProductsSubDto(int p_no, String p_code, String p_size, String p_stock) {
		super();
		this.p_no = p_no;
		this.p_code = p_code;
		this.p_size = p_size;
		this.p_stock = p_stock;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
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
