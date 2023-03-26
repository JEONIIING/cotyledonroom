package coty.member.vo;

public class OrderListVo {
	
	private String no;
	private String p_no;
	private String o_no;
	private String amount;
	public OrderListVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderListVo(String no, String p_no, String o_no, String amount) {
		super();
		this.no = no;
		this.p_no = p_no;
		this.o_no = o_no;
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "OrderListVo [no=" + no + ", p_no=" + p_no + ", o_no=" + o_no + ", amount=" + amount + "]";
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getP_no() {
		return p_no;
	}
	public void setP_no(String p_no) {
		this.p_no = p_no;
	}
	public String getO_no() {
		return o_no;
	}
	public void setO_no(String o_no) {
		this.o_no = o_no;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
}
