package servletdb;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.*;

@Entity
public class Attendance {
	@Id
	private String id;
	private String SID;
	private String subID;
	private Map<String, Integer> attendance;

	public Attendance(){
		this.attendance = new HashMap<String,Integer>();
	}
	public String getSID() {
		return SID;
	}
	
	public void setID(String id) {
		this.id = id;
	}
	
	public void setSID(String sID) {
		SID = sID;
	}

	public String getSubID() {
		return subID;
	}

	public void setSubID(String subID) {
		this.subID = subID;
	}

	public String getId() {
		return id;
	}

	public Map<String, Integer> getAttendance() {
		return attendance;
	}

	public void setAttendance(Map<String, Integer> attendance) {
		this.attendance = attendance;
	}

}
