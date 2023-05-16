package com.example.demo.model.question;

public class Form1 {
	private int gioitinh; //0-nu, 1-nam
	private int tuoi;
	private int cannang;
	private int chieucao;
	private int thoigiantapluyen;
	public Form1() {
		super();
	}
	public Form1(int gioitinh, int tuoi, int cannang, int chieucao, int thoigiantapluyen) {
		super();
		this.gioitinh = gioitinh;
		this.tuoi = tuoi;
		this.cannang = cannang;
		this.chieucao = chieucao;
		this.thoigiantapluyen = thoigiantapluyen;
	}
	public int getGioitinh() {
		return gioitinh;
	}
	public void setGioitinh(int gioitinh) {
		this.gioitinh = gioitinh;
	}
	public int getTuoi() {
		return tuoi;
	}
	public void setTuoi(int tuoi) {
		this.tuoi = tuoi;
	}
	public int getCannang() {
		return cannang;
	}
	public void setCannang(int cannang) {
		this.cannang = cannang;
	}
	public int getChieucao() {
		return chieucao;
	}
	public void setChieucao(int chieucao) {
		this.chieucao = chieucao;
	}
	public int getThoigiantapluyen() {
		return thoigiantapluyen;
	}
	public void setThoigiantapluyen(int thoigiantapluyen) {
		this.thoigiantapluyen = thoigiantapluyen;
	}
	
	
}
