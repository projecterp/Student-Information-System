package servletdb;

import javax.persistence.*;

@Entity
public class Message {
	@Id
	@GeneratedValue
	private Long Id;
	private String to; // StudentID
	private String subject;
	private String message;

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

}
