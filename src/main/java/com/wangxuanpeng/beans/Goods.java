package com.wangxuanpeng.beans;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class Goods {

	private Integer gid;
	private String gname;
	@DateTimeFormat(pattern="YYYY-MM-dd")
	private Date datea;
	private Integer tid;
	private double price;
	private Integer status;
	
	private String tname;

	public Integer getGid() {
		return gid;
	}

	public void setGid(Integer gid) {
		this.gid = gid;
	}

	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	public Date getDatea() {
		return datea;
	}

	public void setDatea(Date datea) {
		this.datea = datea;
	}

	public Integer getTid() {
		return tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", gname=" + gname + ", datea=" + datea + ", tid=" + tid + ", price=" + price
				+ ", status=" + status + ", tname=" + tname + "]";
	}

	
	
	
	
}
