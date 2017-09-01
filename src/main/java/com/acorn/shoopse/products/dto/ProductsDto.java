package com.acorn.shoopse.products.dto;

import org.springframework.web.multipart.MultipartFile;

public class ProductsDto {
	private String p_code;
	private String p_kind_code;
	private String p_name;
	private String p_brand;
	private int p_price;
	private double point;
	private String p_regdate;
	private String p_comment;
	private String P_detail_comment;
	private String p_main_img;
	private MultipartFile file;
	private String p_sub_img;
	private String parent_kind_code;
	private String kind_name;
	
	
	public ProductsDto(){}

	public ProductsDto(String p_code, String p_kind_code, String p_name, String p_brand, int p_price, int point,
			String p_regdate, String p_comment, String p_detail_comment, String p_main_img, MultipartFile file, String p_sub_img) {
		super();
		this.p_code = p_code;
		this.p_kind_code = p_kind_code;
		this.p_name = p_name;
		this.p_brand = p_brand;
		this.p_price = p_price;
		this.point = point;
		this.p_regdate = p_regdate;
		this.p_comment = p_comment;
		P_detail_comment = p_detail_comment;
		this.p_main_img = p_main_img;
		this.file = file;
		this.p_sub_img = p_sub_img;
	}
	
	
	public String getParent_kind_code() {
		return parent_kind_code;
	}

	public void setParent_kind_code(String parent_kind_code) {
		this.parent_kind_code = parent_kind_code;
	}

	public String getKind_name() {
		return kind_name;
	}

	public void setKind_name(String kind_name) {
		this.kind_name = kind_name;
	}

	public String getP_sub_img() {
		return p_sub_img;
	}

	public void setP_sub_img(String p_sub_img) {
		this.p_sub_img = p_sub_img;
	}

	public String getP_code() {
		return p_code;
	}

	public void setP_code(String p_code) {
		this.p_code = p_code;
	}

	public String getP_kind_code() {
		return p_kind_code;
	}

	public void setP_kind_code(String p_kind_code) {
		this.p_kind_code = p_kind_code;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getP_brand() {
		return p_brand;
	}

	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public double getPoint() {
		return point;
	}

	public void setPoint(double point) {
		this.point = point;
	}

	public String getP_regdate() {
		return p_regdate;
	}

	public void setP_regdate(String p_regdate) {
		this.p_regdate = p_regdate;
	}

	public String getP_comment() {
		return p_comment;
	}

	public void setP_comment(String p_comment) {
		this.p_comment = p_comment;
	}

	public String getP_detail_comment() {
		return P_detail_comment;
	}

	public void setP_detail_comment(String p_detail_comment) {
		P_detail_comment = p_detail_comment;
	}

	public String getP_main_img() {
		return p_main_img;
	}

	public void setP_main_img(String p_main_img) {
		this.p_main_img = p_main_img;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	
	
}
