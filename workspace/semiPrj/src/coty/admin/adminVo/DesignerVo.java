package coty.admin.adminVo;

//디자이너 테이블
public class DesignerVo {
	private String no; //pk
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String email;

	public DesignerVo() {
	}
	
	public DesignerVo(String no, String id, String pwd, String name, String phone, String email) {
		this.no = no;
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "DesignerVo [no=" + no + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone + ", email="
				+ email + "]";
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
