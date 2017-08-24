package com.acorn.shoopse.order.dto;

public class OrderCartDto {
	//order_tb
	private int o_total_count;
	private int o_total_price;
	//order_sub
	private String p_code;
	private int o_count;
	private int o_sub_total_price;
	private int o_sub_price;
	//product_tb
	private String p_name;
	private String p_size;
	
	public int getO_total_count() {
		return o_total_count;
	}
	public void setO_total_count(int o_total_count) {
		this.o_total_count = o_total_count;
	}
	public int getO_total_price() {
		return o_total_price;
	}
	public void setO_total_price(int o_total_price) {
		this.o_total_price = o_total_price;
	}
	public String getP_code() {
		return p_code;
	}
	public void setP_code(String p_code) {
		this.p_code = p_code;
	}
	public int getO_count() {
		return o_count;
	}
	public void setO_count(int o_count) {
		this.o_count = o_count;
	}
	public int getO_sub_total_price() {
		return o_sub_total_price;
	}
	public void setO_sub_total_price(int o_sub_total_price) {
		this.o_sub_total_price = o_sub_total_price;
	}
	public int getO_sub_price() {
		return o_sub_price;
	}
	public void setO_sub_price(int o_sub_price) {
		this.o_sub_price = o_sub_price;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	
	
	
}
