package com.example.demo.model.dto;


public class ThucPhamDTO {
	private String ten;
	private int luong;
	public ThucPhamDTO() {
		super();
	}
	public ThucPhamDTO(String ten, int luong) {
		super();
		this.ten = ten;
		this.luong = luong;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public int getLuong() {
		return luong;
	}
	public void setLuong(int luong) {
		this.luong = luong;
	}
}
