package cn.edu.wic.supervision.model;

public class SessionUser {
	private Integer id;
	private String name;

	@Override
	public String toString() {
		return String.format("%d,%s", id, name);
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

}