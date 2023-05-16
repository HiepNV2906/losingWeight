package com.example.demo.model.dto;


public class MonTheThaoDTO {
	private String ten;
	private int thoigiantap;
	private String link;
	public MonTheThaoDTO() {
		super();
	}
	public MonTheThaoDTO(String ten, int thoigiantap, String link) {
		super();
		this.ten = ten;
		this.thoigiantap = thoigiantap;
		this.link = link;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public int getThoigiantap() {
		return thoigiantap;
	}
	public void setThoigiantap(int thoigiantap) {
		this.thoigiantap = thoigiantap;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
}
