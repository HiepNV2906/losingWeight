package com.example.demo.model.dto;

import java.util.List;

public class CacThanhPhanDTO {
	private String ten;
	private List<ThucPhamDTO> listTP;
	public CacThanhPhanDTO() {
		super();
	}
	public CacThanhPhanDTO(String ten, List<ThucPhamDTO> listTP) {
		super();
		this.ten = ten;
		this.listTP = listTP;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public List<ThucPhamDTO> getListTP() {
		return listTP;
	}
	public void setListTP(List<ThucPhamDTO> listTP) {
		this.listTP = listTP;
	}
	
	
}
