package com.acorn.shoopse.agency.dto;

public class AgencyDto {
	private int a_code;
	private String company;
	private String name;
	private String phone;
	private String email;
	private String regdate;
	
	public AgencyDto(){}

	public AgencyDto(int a_code, String company, String name, String phone, String email, String regdate) {
		super();
		this.a_code = a_code;
		this.company = company;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.regdate = regdate;
	}

	public int getA_code() {
		return a_code;
	}

	public void setA_code(int a_code) {
		this.a_code = a_code;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
