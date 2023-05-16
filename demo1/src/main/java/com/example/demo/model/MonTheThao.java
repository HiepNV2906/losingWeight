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
@Table(name = "monthethao")
public class MonTheThao implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(columnDefinition = "nvarchar(255) not null", name = "ten")
	private String ten;
	@Column(name = "luongcalotrentieng", nullable = false)
	private int luongCalotrenTieng;
	@Column(columnDefinition = "nvarchar(255)", name = "link")
	private String link;
	@ManyToOne
	@JoinColumn(name="cuongdoluyentapid")
	private CuongDoLuyenTap cuongDoLuyenTap;
	public MonTheThao() {
		super();
	}
	public MonTheThao(int id, String ten, int luongCalotrenTieng, String link, CuongDoLuyenTap cuongDoLuyenTap) {
		super();
		this.id = id;
		this.ten = ten;
		this.luongCalotrenTieng = luongCalotrenTieng;
		this.link = link;
		this.cuongDoLuyenTap = cuongDoLuyenTap;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public int getLuongCalotrenTieng() {
		return luongCalotrenTieng;
	}
	public void setLuongCalotrenTieng(int luongCalotrenTieng) {
		this.luongCalotrenTieng = luongCalotrenTieng;
	}
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public CuongDoLuyenTap getCuongDoLuyenTap() {
		return cuongDoLuyenTap;
	}
	public void setCuongDoLuyenTap(CuongDoLuyenTap cuongDoLuyenTap) {
		this.cuongDoLuyenTap = cuongDoLuyenTap;
	}
}
