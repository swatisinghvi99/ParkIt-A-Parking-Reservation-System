package net.java.delete.bean;

import java.io.Serializable;

public class DeleteBean implements Serializable {
	
	private static final long serialVersionUID = 1L;
	private String id;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
}
