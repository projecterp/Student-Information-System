package servletdb;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.*;

@Entity
public class Schedule {

	@Id
	private String id;
	private String subID;
	private Map<String, String> dayTime;
    private int Class;
	
	public Schedule() {
		this.setDayTime(new HashMap<String, String>());
	}
	
	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public Map<String, String> getDayTime() {
		return dayTime;
	}

	public void setDayTime(Map<String, String> dayTime) {
		this.dayTime = dayTime;
	}

	public String getSubID() {
		return subID;
	}

	public void setSubID(String subID) {
		this.subID = subID;
	}

	public int getclass() {
		return Class;
	}

	public void setClass(int class1) {
		Class = class1;
	}

}
