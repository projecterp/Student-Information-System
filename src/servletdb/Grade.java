package servletdb;

import java.util.HashMap;
import java.util.Map;

import javax.persistence.*;

@Entity
public class Grade {
	@Id
	private String id;
	private String SID;
	private String subID;
    private Map<String,Integer> grades;
    
    public Grade(){
    	this.grades = new HashMap<String,Integer>();
    }
    
    public void setID(String id){
    	this.id = id;
    }
	public String getSID() {
		return SID;
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

	public Map<String,Integer> getGrades() {
		return grades;
	}

	public void setGrades(Map<String,Integer> grades) {
		this.grades = grades;
	}
	
	public String getId(){
		return id;
	}
}
