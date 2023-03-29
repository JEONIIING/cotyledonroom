package coty.member.vo;

public class AddressVo {
	
	private String no;
	private String cno;
	private String adname;
	private String detail;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getAdname() {
		return adname;
	}
	public void setAdname(String adname) {
		this.adname = adname;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	public AddressVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AddressVo(String no, String cno, String adname, String detail) {
		super();
		this.no = no;
		this.cno = cno;
		this.adname = adname;
		this.detail = detail;
	}
	@Override
	public String toString() {
		return "AddressVo [no=" + no + ", cno=" + cno + ", adname=" + adname + ", detail=" + detail + "]";
	}
	

}
