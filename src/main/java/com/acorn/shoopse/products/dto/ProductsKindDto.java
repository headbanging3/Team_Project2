package com.acorn.shoopse.products.dto;

public class ProductsKindDto {
	private String p_kind_code;
	private String parent_kind_code;
	private String kind_name;
	
	public ProductsKindDto(){}

	public ProductsKindDto(String p_kind_code, String parent_kind_code, String kind_name) {
		super();
		this.p_kind_code = p_kind_code;
		this.parent_kind_code = parent_kind_code;
		this.kind_name = kind_name;
	}

	public String getP_kind_code() {
		return p_kind_code;
	}

	public void setP_kind_code(String p_kind_code) {
		this.p_kind_code = p_kind_code;
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
	
	
}
