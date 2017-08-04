package edu.daffodil.ssb.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="studentmarks")
public class StudentMarks {
	
	@Override
	public String toString() {
		return "StudentMarks [id=" + id + ", studentid=" + studentid + ", marks=" + marks + "]";
	}

	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="studentid")
	private String studentid;
	
	@Column(name="marks")
	private int marks;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentId() {
		return studentid;
	}

	public void setStudentId(String studentId) {
		this.studentid = studentId;
	}

	public int getMarks() {
		return marks;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}
	
	
	

}
