package com.satya.actions;

import com.opensymphony.xwork2.Action;

public class ThresholdEdit implements Action {

	private String message;

	@Override
	public String execute() throws Exception {
		
		setMessage("babababa");
		
		return "success";
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
