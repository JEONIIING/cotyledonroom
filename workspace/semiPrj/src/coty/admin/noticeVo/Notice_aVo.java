package coty.admin.noticeVo;

public class Notice_aVo {
	
	private String no;
	private String a_no;
	private String title;
	private String content;
	private String enrollDate;
	private String deleteYn;
	
	
	
	
	public Notice_aVo() {
		
	}
	public Notice_aVo(String no, String a_no, String title, String content, String enrollDate, String deleteYn) {
		super();
		this.no = no;
		this.a_no = a_no;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.deleteYn = deleteYn;
	}
	@Override
	public String toString() {
		return "Notice_aVo [no=" + no + ", a_no=" + a_no + ", title=" + title + ", content=" + content + ", enrollDate="
				+ enrollDate + ", deleteYn=" + deleteYn + "]";
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getA_no() {
		return a_no;
	}
	public void setA_no(String a_no) {
		this.a_no = a_no;
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
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getDeleteYn() {
		return deleteYn;
	}
	public void setDeleteYn(String deleteYn) {
		this.deleteYn = deleteYn;
	}
	

}
