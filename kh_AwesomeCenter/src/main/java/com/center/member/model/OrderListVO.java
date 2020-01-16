package com.center.member.model;

public class OrderListVO {

	String no;
	String userno_fk;
	String class_seq_fk;
	String status;
	String price;
	String payday;
	
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getUserno_fk() {
		return userno_fk;
	}
	public void setUserno_fk(String userno_fk) {
		this.userno_fk = userno_fk;
	}
	public String getClass_seq_fk() {
		return class_seq_fk;
	}
	public void setClass_seq_fk(String class_seq_fk) {
		this.class_seq_fk = class_seq_fk;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPayday() {
		return payday;
	}
	public void setPayday(String payday) {
		this.payday = payday;
	}
	
	
	
}
