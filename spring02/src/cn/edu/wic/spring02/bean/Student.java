package cn.edu.wic.spring02.bean;

public class Student {
	private String name, sex;

	public void setName(String name) {
		this.name = name;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	@Override
	public String toString() {
		return String.format("Student %s, Sex %s", name, sex);
	}
}