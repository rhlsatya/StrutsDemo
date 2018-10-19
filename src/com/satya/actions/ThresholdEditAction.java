package com.satya.actions;

import com.opensymphony.xwork2.ActionSupport;

public class ThresholdEditAction extends ActionSupport {

	private String message;

	@Override
	public String execute() throws Exception {
		
		setMessage("babababa");
		
		return SUCCESS;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
