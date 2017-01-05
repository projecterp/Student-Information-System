package servletdb;

import javax.persistence.*;

@Entity
public class Fee {
	@Id
	@GeneratedValue
	private Long Id;
	private int fee1;
	private String SID;
	private int fee2;
	private boolean paid1;
	private boolean paid2;
	public int getFee1() {
		return fee1;
	}
	public void setFee1(int fee1) {
		this.fee1 = fee1;
	}
	public boolean isPaid2() {
		return paid2;
	}
	public void setPaid2(boolean paid2) {
		this.paid2 = paid2;
	}
	public boolean isPaid1() {
		return paid1;
	}
	public void setPaid1(boolean paid1) {
		this.paid1 = paid1;
	}
	public int getFee2() {
		return fee2;
	}
	public void setFee2(int fee2) {
		this.fee2 = fee2;
	}
	public String getSID() {
		return SID;
	}
	public void setSID(String sID) {
		SID = sID;
	}
}
