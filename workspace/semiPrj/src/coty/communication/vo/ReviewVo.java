package coty.communication.vo;

import coty.member.vo.MemberVo;

public class ReviewVo {
	
	private String no;
	private String rNo;
	private String content;
	private String enrollDate;
	private String delYn;
	private String hit;
	private String changeName;
	
	public ReviewVo() {
		// TODO Auto-generated constructor stub
	}

	public ReviewVo(String no, String rNo, String content, String enrollDate, String delYn, String hit,
			String changeName) {
		super();
		this.no = no;
		this.rNo = rNo;
		this.content = content;
		this.enrollDate = enrollDate;
		this.delYn = delYn;
		this.hit = hit;
		this.changeName = changeName;
	}

	@Override
	public String toString() {
		return "ReviewVo [no=" + no + ", rNo=" + rNo + ", content=" + content + ", enrollDate=" + enrollDate
				+ ", delYn=" + delYn + ", hit=" + hit + ", changeName=" + changeName + "]";
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getrNo() {
		return rNo;
	}

	public void setrNo(String rNo) {
		this.rNo = rNo;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}
	
	
	
	
	

}
