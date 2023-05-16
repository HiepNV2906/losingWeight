package com.example.demo.model.dto;


public class CheDoAnDTO {
	private String ten;
	private String mota;
	private String huongdan;
	public CheDoAnDTO() {
		super();
	}
	public CheDoAnDTO(String ten, String mota, String huongdan) {
		super();
		this.ten = ten;
		this.mota = mota;
		this.huongdan = huongdan;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public String getHuongdan() {
		return huongdan;
	}
	public void setHuongdan(String huongdan) {
		this.huongdan = huongdan;
	}
	
	
}
