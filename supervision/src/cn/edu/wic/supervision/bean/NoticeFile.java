package cn.edu.wic.supervision.bean;

public class NoticeFile {
	private Integer id;
	private String filename;
	private Long size;
	private byte[] file;
	private Integer notice;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public byte[] getFile() {
		return file;
	}

	public void setFile(byte[] file) {
		this.file = file;
	}

	public Integer getNotice() {
		return notice;
	}

	public void setNotice(Integer notice) {
		this.notice = notice;
	}

}
