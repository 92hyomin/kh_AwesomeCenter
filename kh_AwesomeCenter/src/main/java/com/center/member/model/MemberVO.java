package com.center.member.model;

public class MemberVO {
	
	String userno;
	String userid;
	String userpw;
	String username;
	String rrn1;
	String rrn2;
	String post;
	String addr1;
	String addr2;
	String hp1;
	String hp2;
	String hp3;
	String email;
	String marketing_sms;
	String marketing_email;
	String registerday;
	String editday;
	String lastloginday;
	String status;
	String withdrawalday;
	String birthyy;
	String birthmm;
	String birthdd;
	
	public String getUserno() {
		return userno;
	}
	public void setUserno(String userno) {
		this.userno = userno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRrn1() {
		return rrn1;
	}
	public void setRrn1(String rrn1) {
		this.rrn1 = rrn1;
	}
	public String getRrn2() {
		return rrn2;
	}
	public void setRrn2(String rrn2) {
		this.rrn2 = rrn2;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getHp1() {
		return hp1;
	}
	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}
	public String getHp2() {
		return hp2;
	}
	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}
	public String getHp3() {
		return hp3;
	}
	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMarketing_sms() {
		return marketing_sms;
	}
	public void setMarketing_sms(String marketing_sms) {
		this.marketing_sms = marketing_sms;
	}
	public String getMarketing_email() {
		return marketing_email;
	}
	public void setMarketing_email(String marketing_email) {
		this.marketing_email = marketing_email;
	}
	public String getRegisterday() {
		return registerday;
	}
	public void setRegisterday(String registerday) {
		this.registerday = registerday;
	}
	public String getEditday() {
		return editday;
	}
	public void setEditday(String editday) {
		this.editday = editday;
	}
	public String getLastloginday() {
		return lastloginday;
	}
	public void setLastloginday(String lastloginday) {
		this.lastloginday = lastloginday;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getWithdrawalday() {
		return withdrawalday;
	}
	public void setWithdrawalday(String withdrawalday) {
		this.withdrawalday = withdrawalday;
	}
	public String getBirthyy() {
		return birthyy;
	}
	public void setBirthyy(String birthyy) {
		this.birthyy = birthyy;
	}
	public String getBirthmm() {
		return birthmm;
	}
	public void setBirthmm(String birthmm) {
		this.birthmm = birthmm;
	}
	public String getBirthdd() {
		return birthdd;
	}
	public void setBirthdd(String birthdd) {
		this.birthdd = birthdd;
	}
	
	
	
	public String getRrn() {
		return rrn1+"-"+rrn2;
	}
	public String getAddr() {
		return addr1+" "+addr2;
	}
	public String getHp() {
		return hp1+"-"+hp2+"-"+hp3;
	}
	public String getBirthday() {
		return birthyy+"."+birthmm+"."+birthdd;
	}
	public String getGender() {
		String gender = "";
		if("1".equals(rrn2.substring(0,1)) || "3".equals(rrn2.substring(0,1)) ) {
			gender = "남성";
		}
		else {
			gender = "여성";
		}
		return gender;
	}
	

}
