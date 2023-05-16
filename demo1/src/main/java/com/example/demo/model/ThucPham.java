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
@Table(name = "thucpham")
public class ThucPham implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	@Column(columnDefinition = "nvarchar(255) not null", name = "ten")
	private String ten;
	@Column(name = "luongcalotrenkg", nullable = false)
	private int luongCalotrenKg;
	@ManyToOne
	@JoinColumn(name="cacthanhphanid")
	private CacThanhPhan cacThanhPhan;
	public ThucPham() {
		super();
	}
	public ThucPham(int id, String ten, int luongCalotrenKg, CacThanhPhan cacThanhPhan) {
		super();
		this.id = id;
		this.ten = ten;
		this.luongCalotrenKg = luongCalotrenKg;
		this.cacThanhPhan = cacThanhPhan;
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
	public int getLuongCalotrenKg() {
		return luongCalotrenKg;
	}
	public void setLuongCalotrenKg(int luongCalotrenKg) {
		this.luongCalotrenKg = luongCalotrenKg;
	}
	public CacThanhPhan getCacThanhPhan() {
		return cacThanhPhan;
	}
	public void setCacThanhPhan(CacThanhPhan cacThanhPhan) {
		this.cacThanhPhan = cacThanhPhan;
	}
}
