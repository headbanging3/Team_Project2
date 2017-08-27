package com.acorn.shoopse.order.dto;

public class OrderDto {
	int o_no;
	String o_date;
	int o_total_count;
	int o_total_price;
	int mem_num;
	String delivery_flag;
	String o_status;
	
	public OrderDto() {}

	public OrderDto(int o_no, String o_date, int o_total_count, int o_total_price, int mem_num, String delivery_flag,
			String o_status) {
		super();
		this.o_no = o_no;
		this.o_date = o_date;
		this.o_total_count = o_total_count;
		this.o_total_price = o_total_price;
		this.mem_num = mem_num;
		this.delivery_flag = delivery_flag;
		this.o_status = o_status;
	}

	public int getO_no() {
		return o_no;
	}

	public void setO_no(int o_no) {
		this.o_no = o_no;
	}

	public String getO_date() {
		return o_date;
	}

	public void setO_date(String o_date) {
		this.o_date = o_date;
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

	public int getMem_num() {
		return mem_num;
	}

	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}

	public String getDelivery_flag() {
		return delivery_flag;
	}

	public void setDelivery_flag(String delivery_flag) {
		this.delivery_flag = delivery_flag;
	}

	public String getO_status() {
		return o_status;
	}

	public void setO_status(String o_status) {
		this.o_status = o_status;
	}
	
	
}
