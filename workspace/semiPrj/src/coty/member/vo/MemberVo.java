package coty.member.vo;

public class MemberVo {
	private String no;
	private String m_no;
	private String name;
	private String id;
	private String pwd;
	private String nick;
	private String ssno;
	private String birth;
	private String address;
	private String email;
	private String gender_fm;
	private String sign_up_day;
	private String quit_yn;
	private String phone;
	private String com;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getM_no() {
		return m_no;
	}
	public void setM_no(String m_no) {
		this.m_no = m_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getSsno() {
		return ssno;
	}
	public void setSsno(String ssno) {
		this.ssno = ssno;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender_fm() {
		return gender_fm;
	}
	public void setGender_fm(String gender_fm) {
		this.gender_fm = gender_fm;
	}
	public String getSign_up_day() {
		return sign_up_day;
	}
	public void setSign_up_day(String sign_up_day) {
		this.sign_up_day = sign_up_day;
	}
	public String getQuit_yn() {
		return quit_yn;
	}
	public void setQuit_yn(String quit_yn) {
		this.quit_yn = quit_yn;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCom() {
		return com;
	}
	public void setCom(String com) {
		this.com = com;
	}
	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberVo(String no, String m_no, String name, String id, String pwd, String nick, String ssno, String birth,
			String address, String email, String gender_fm, String sign_up_day, String quit_yn, String phone,
			String com) {
		super();
		this.no = no;
		this.m_no = m_no;
		this.name = name;
		this.id = id;
		this.pwd = pwd;
		this.nick = nick;
		this.ssno = ssno;
		this.birth = birth;
		this.address = address;
		this.email = email;
		this.gender_fm = gender_fm;
		this.sign_up_day = sign_up_day;
		this.quit_yn = quit_yn;
		this.phone = phone;
		this.com = com;
	}
	@Override
	public String toString() {
		return "MemberVo [no=" + no + ", m_no=" + m_no + ", name=" + name + ", id=" + id + ", pwd=" + pwd + ", nick="
				+ nick + ", ssno=" + ssno + ", birth=" + birth + ", address=" + address + ", email=" + email
				+ ", gender_fm=" + gender_fm + ", sign_up_day=" + sign_up_day + ", quit_yn=" + quit_yn + ", phone="
				+ phone + ", com=" + com + "]";
	}
	
	
	
	

}