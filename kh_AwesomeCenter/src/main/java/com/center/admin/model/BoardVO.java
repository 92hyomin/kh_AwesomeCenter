package com.center.admin.model;

public class BoardVO {
	
	private String Not_seq; 
	private String fk_userid; 
	private String Not_title;
	private String Not_content;
	private String Not_regDate;
	private String Not_status;
	
	public BoardVO() {}

	public BoardVO(String not_seq, String fk_userid, String not_title, String not_content, String not_regDate,
			String not_status) {
		super();
		Not_seq = not_seq;
		this.fk_userid = fk_userid;
		Not_title = not_title;
		Not_content = not_content;
		Not_regDate = not_regDate;
		Not_status = not_status;
	}

	public String getNot_seq() {
		return Not_seq;
	}

	public void setNot_seq(String not_seq) {
		Not_seq = not_seq;
	}

	public String getFk_userid() {
		return fk_userid;
	}

	public void setFk_userid(String fk_userid) {
		this.fk_userid = fk_userid;
	}

	public String getNot_title() {
		return Not_title;
	}

	public void setNot_title(String not_title) {
		Not_title = not_title;
	}

	public String getNot_content() {
		return Not_content;
	}

	public void setNot_content(String not_content) {
		Not_content = not_content;
	}

	public String getNot_regDate() {
		return Not_regDate;
	}

	public void setNot_regDate(String not_regDate) {
		Not_regDate = not_regDate;
	}

	public String getNot_status() {
		return Not_status;
	}

	public void setNot_status(String not_status) {
		Not_status = not_status;
	}

	
	

}
