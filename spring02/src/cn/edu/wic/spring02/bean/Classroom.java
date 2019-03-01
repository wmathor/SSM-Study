package cn.edu.wic.spring02.bean;

public class Classroom {
	private Teacher teacher;
	private Student student;
	
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	
	public void setStudent(Student student) {
		this.student = student;
	}
	
	@Override
	public String toString() {
		return String.format("%s, %s", teacher, student);
	}
}