package servletdb;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

import javax.persistence.*;

@Entity
public class News {
	@Id
	@GeneratedValue
	private Long id;
	private String timestamp;
	private String content;

	public String getTimestamp() {
		return timestamp;
	}

	public void setTimestamp() {
		SimpleDateFormat sd = new SimpleDateFormat("dd.MM.yyyy G 'at' HH:mm z");
		Date date = new Date();
		sd.setTimeZone(TimeZone.getTimeZone("IST"));
		this.timestamp = sd.format(date);
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
