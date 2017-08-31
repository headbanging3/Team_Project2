package com.acorn.shoopse.order.dto;

public class OrderListDto {
	private int o_no;
	private String date;
	private int o_total_count;
	private int o_total_price;
	private int delivery_flag;
	private int o_status;
	private String res_name;
	private String res_phone;
	private String res_address;
	
	


	public int getO_no() {
		return o_no;
	}

	public void setO_no(int o_no) {
		this.o_no = o_no;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

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

	public int getDelivery_flag() {
		return delivery_flag;
	}

	public void setDelivery_flag(int delivery_flag) {
		this.delivery_flag = delivery_flag;
	}

	public int getO_status() {
		return o_status;
	}

	public void setO_status(int o_status) {
		this.o_status = o_status;
	}

	public String getRes_name() {
		return res_name;
	}

	public void setRes_name(String res_name) {
		this.res_name = res_name;
	}

	public String getRes_phone() {
		return res_phone;
	}

	public void setRes_phone(String res_phone) {
		this.res_phone = res_phone;
	}

	public String getRes_address() {
		return res_address;
	}

	public void setRes_address(String res_address) {
		this.res_address = res_address;
	}
	
	
}
