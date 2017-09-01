package com.acorn.shoopse.order.dto;

public class OrderActionDto {
	private int o_no;
	
	private String res_name;
	private String res_phone;
	private String res_address;
	private int mem_num;
	
	public int getO_no() {
		return o_no;
	}
	public void setO_no(int o_no) {
		this.o_no = o_no;
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
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	@Override
	public String toString() {
		return "OrderActionDto [o_no=" + o_no + ", res_name=" + res_name + ", res_phone=" + res_phone + ", res_address="
				+ res_address + ", mem_num=" + mem_num + "]";
	}
	

}
