package servletdb;

import javax.persistence.*;

@Entity
public class Subject {
	@Id
	private String Id;
	private String Name;
	private int credits;

	public String getId(){
		return Id;
	}
	
	public void setId(String Id){
		this.Id = Id;
	}
	
	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public int getCredits() {
		return credits;
	}

	public void setCredits(int credits) {
		this.credits = credits;
	}

}
