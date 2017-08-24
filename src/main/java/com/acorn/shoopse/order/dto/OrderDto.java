package com.acorn.shoopse.order.dto;

public class OrderDto {
	private int o_no;
	private String o_date;
	private String o_total_count;
	private int mem_num;
	private String delivery_flag;
	private String o_status;
	
	OrderDto() {}
	
	public OrderDto(int o_no, String o_date, String o_total_count, int mem_num, String delivery_flag, String o_status) {
		super();
		this.o_no = o_no;
		this.o_date = o_date;
		this.o_total_count = o_total_count;
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

	public String getO_total_count() {
		return o_total_count;
	}

	public void setO_total_count(String o_total_count) {
		this.o_total_count = o_total_count;
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
