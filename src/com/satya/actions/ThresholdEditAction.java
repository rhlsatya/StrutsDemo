package com.satya.actions;

import com.opensymphony.xwork2.ActionSupport;

public class ThresholdEditAction extends ActionSupport {
	
	private static int brakePadsThreshold = 50;
	private static int axleShaftThreshold = 50;
	private static int engineThreshold = 50;
	private static int clutchThreshold = 50;
	private static int alternatorThreshold = 50;
	private static int suspensionThreshold = 20;

	@Override
	public String execute() throws Exception {
		
		return "success";
	}

	public int getBrakePadsThreshold() {
		return brakePadsThreshold;
	}

	public void setBrakePadsThreshold(int brakePadThreshold) {
		this.brakePadsThreshold = brakePadThreshold;
	}

	public int getAxleShaftThreshold() {
		return axleShaftThreshold;
	}

	public void setAxleShaftThreshold(int axelShaftThreshold) {
		this.axleShaftThreshold = axelShaftThreshold;
	}

	public int getEngineThreshold() {
		return engineThreshold;
	}

	public void setEngineThreshold(int engineThreshold) {
		this.engineThreshold = engineThreshold;
	}

	public int getClutchThreshold() {
		return clutchThreshold;
	}

	public void setClutchThreshold(int clutchThreshold) {
		this.clutchThreshold = clutchThreshold;
	}

	public int getAlternatorThreshold() {
		return alternatorThreshold;
	}

	public void setAlternatorThreshold(int alternatorThreshold) {
		this.alternatorThreshold = alternatorThreshold;
	}

	public int getSuspensionThreshold() {
		return suspensionThreshold;
	}

	public void setSuspensionThreshold(int suspensionThreshold) {
		this.suspensionThreshold = suspensionThreshold;
	}


}



