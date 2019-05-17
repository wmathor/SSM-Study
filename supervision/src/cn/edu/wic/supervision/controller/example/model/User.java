package cn.edu.wic.supervision.controller.example.model;

import java.util.Date;

public class User {
	private Integer id;
	private String name;
	private Date birthday;
	private Float salary;

	public User() {
		super();
	}

	public User(Integer id, String name, Date birthday, Float salary) {
		super();
		this.id = id;
		this.name = name;
		this.birthday = birthday;
		this.salary = salary;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public Float getSalary() {
		return salary;
	}

	public void setSalary(Float salary) {
		this.salary = salary;
	}
}