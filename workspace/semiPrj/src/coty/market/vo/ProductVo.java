package coty.market.vo;

public class ProductVo {

	private String no;
	private String c_no;
	private String name;
	private String price;
	private String p_yn;
	private String ex;
	private String src;
	public ProductVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductVo(String no, String c_no, String name, String price, String p_yn, String ex, String src) {
		super();
		this.no = no;
		this.c_no = c_no;
		this.name = name;
		this.price = price;
		this.p_yn = p_yn;
		this.ex = ex;
		this.src = src;
	}
	@Override
	public String toString() {
		return "ProductVo [no=" + no + ", c_no=" + c_no + ", name=" + name + ", price=" + price + ", p_yn=" + p_yn
				+ ", ex=" + ex + ", src=" + src + "]";
	}
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getP_yn() {
		return p_yn;
	}
	public void setP_yn(String p_yn) {
		this.p_yn = p_yn;
	}
	public String getEx() {
		return ex;
	}
	public void setEx(String ex) {
		this.ex = ex;
	}
	public String getSrc() {
		return src;
	}
	public void setSrc(String src) {
		this.src = src;
	}
}
