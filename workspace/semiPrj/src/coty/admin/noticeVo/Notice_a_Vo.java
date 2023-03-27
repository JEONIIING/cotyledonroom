package coty.admin.noticeVo;

public class Notice_a_Vo {
	
	private String no;
	private String title;
	private String content;
	private String enrollDate;
	private String deleteYn;
	private String writer;
	
	
	
	
	public Notice_a_Vo() {
		
	}
	public Notice_a_Vo(String no, String writer, String title, String content, String enrollDate, String deleteYn) {
		super();
		this.no = no;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
		this.deleteYn = deleteYn;
	}
	@Override
	public String toString() {
		return "Notice_a_Vo [no=" + no + ", writer=" + writer + ", title=" + title + ", content=" + content + ", enrollDate="
				+ enrollDate + ", deleteYn=" + deleteYn + "]";
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getwriter() {
		return writer;
	}
	public void setwriter(String writer) {
		this.writer = writer;
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
