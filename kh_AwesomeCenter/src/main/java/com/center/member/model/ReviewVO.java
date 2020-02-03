package com.center.member.model;

public class ReviewVO {
	
	String no;
	String userno_fk;
	String classno_fk;
	String title;
	String content;
	String writeday;
	
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
	public String getClassno_fk() {
		return classno_fk;
	}
	public void setClassno_fk(String classno_fk) {
		this.classno_fk = classno_fk;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWriteday() {
		return writeday;
	}
	public void setWriteday(String writeday) {
		this.writeday = writeday;
	}

}
