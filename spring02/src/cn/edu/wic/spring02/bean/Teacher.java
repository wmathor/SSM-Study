package cn.edu.wic.spring02.bean;

public class Teacher {
	private String name, phone;

	Teacher(String name, String phone) {
		this.name = name;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return String.format("Teacher %s's Phone is£º%s", name, phone);
	}
}