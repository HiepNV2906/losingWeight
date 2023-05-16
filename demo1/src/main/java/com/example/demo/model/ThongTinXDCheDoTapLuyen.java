package com.example.demo.model;

import java.io.Serializable;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "thongtinxdchedotapluyen")
public class ThongTinXDCheDoTapLuyen implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(columnDefinition = "nvarchar(255) not null", name = "tinhtrangthechat")
	private String tinhTrangTheChat;
	@Column(columnDefinition = "nvarchar(255) not null", name = "level")
	private String level;
	@Column(columnDefinition = "nvarchar(255) not null", name = "tocdogiamcan")
	private String tocDoGiamCan;
	@Column(name = "bmi", nullable = false)
	private int bMI;
	@ManyToOne
	@JoinColumn(name="cuongdoluyentapid")
	private CuongDoLuyenTap cuongDoLuyenTap;
	public ThongTinXDCheDoTapLuyen() {
		super();
	}
	public ThongTinXDCheDoTapLuyen(int id, String tinhTrangTheChat, String level, String tocDoGiamCan, int bMI,
			CuongDoLuyenTap cuongDoLuyenTap) {
		super();
		this.id = id;
		this.tinhTrangTheChat = tinhTrangTheChat;
		this.level = level;
		this.tocDoGiamCan = tocDoGiamCan;
		this.bMI = bMI;
		this.cuongDoLuyenTap = cuongDoLuyenTap;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTinhTrangTheChat() {
		return tinhTrangTheChat;
	}
	public void setTinhTrangTheChat(String tinhTrangTheChat) {
		this.tinhTrangTheChat = tinhTrangTheChat;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getTocDoGiamCan() {
		return tocDoGiamCan;
	}
	public void setTocDoGiamCan(String tocDoGiamCan) {
		this.tocDoGiamCan = tocDoGiamCan;
	}
	public int getbMI() {
		return bMI;
	}
	public void setbMI(int bMI) {
		this.bMI = bMI;
	}
	public CuongDoLuyenTap getCuongDoLuyenTap() {
		return cuongDoLuyenTap;
	}
	public void setCuongDoLuyenTap(CuongDoLuyenTap cuongDoLuyenTap) {
		this.cuongDoLuyenTap = cuongDoLuyenTap;
	}
}
