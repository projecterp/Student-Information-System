package servletdb;

import java.util.Map;

import javax.persistence.*;
@Entity
public class Takes {

	@Id
    @GeneratedValue
    private Long id;
	private String sid;
	private String subID;
	private int credits;
	private String grade;
	private String attendance;
    private Map<String,String> schedule;
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSubID() {
		return subID;
	}
	public void setSubID(String subID) {
		this.subID = subID;
	}
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Map<String,String> getSchedule() {
		return schedule;
	}
	public void setSchedule(Map<String,String> schedule) {
		this.schedule = schedule;
	}
	public int getCredits() {
		return credits;
	}
	public void setCredits(int credits) {
		this.credits = credits;
	}    
}
