package myweb;

import java.util.Date;
import java.util.Random;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



//@AllArgsConstructor
//@NoArgsConstructor
@Getter
@Setter
@Table(name="notes")
@Entity
public class Note {
	
	@Id
	private int id;
	private String title;
	private String content;
	
	private Date addedDate;
	

	public Note() {
		super();
	}
	
	
	public Note(String title, String content, Date addedDate) {
		super();
		this.id = new Random().nextInt(10000);
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}



	
	

}
