package com.acorn.shoopse.products.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class ProductsImgsDto {
	private String p_sub_img;
	private String p_code;
	private List<MultipartFile> subImgs;
	
	public ProductsImgsDto(){}

	public ProductsImgsDto(String p_sub_img, String p_code, List<MultipartFile> subImgs) {
		super();
		this.p_sub_img = p_sub_img;
		this.p_code = p_code;
		this.subImgs = subImgs;
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

	public List<MultipartFile> getSubImgs() {
		return subImgs;
	}

	public void setSubImgs(List<MultipartFile> subImgs) {
		this.subImgs = subImgs;
	}

	

	
	
	
}
