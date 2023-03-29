package coty.member.vo;

public class AddressVo {
	
	private String no;
	private String c_no;
	private String adname;
	private String detail;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getC_no() {
		return c_no;
	}
	public void setC_no(String c_no) {
		this.c_no = c_no;
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
	public AddressVo(String no, String c_no, String adname, String detail) {
		super();
		this.no = no;
		this.c_no = c_no;
		this.adname = adname;
		this.detail = detail;
	}
	@Override
	public String toString() {
		return "AddressVo [no=" + no + ", c_no=" + c_no + ", adname=" + adname + ", detail=" + detail + "]";
	}


}
