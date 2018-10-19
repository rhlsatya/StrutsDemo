package com.satya.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class MainScreen extends ActionSupport {
	
	private static int brakePads = 25;
	private static int axleShaft = 27;
	private static int engine = 30;
	private static int clutch = 52;
	private static int alternator = 70;
	private static int suspension = 90;
	private static int suspensionThreshold = 50;
	private static int brakePadsThreshold = 40;
	private static int axleShaftThreshold = 30;
	private static int engineThreshold = 20;
	private static int clutchThreshold = 10;
	private static int alternatorThreshold = 25;

	@Override
	public String execute() throws Exception {
//		CalculationService calculationService = new CalculationService();
//		//System.out.println("before: " +total);
//		int now =  calculationService.add(total, enteredNumber);
//		
//		total = now;
		//System.out.println("after: " +total);
		return SUCCESS;
	}

	public int getBrakePads() {
		return brakePads;
	}

	public void setBrakePads(int brakePads) {
		this.brakePads = brakePads;
	}

	public int getAxleShaft() {
		return axleShaft;
	}

	public void setAxleShaft(int axleShaft) {
		this.axleShaft = axleShaft;
	}

	public int getEngine() {
		return engine;
	}

	public void setEngine(int engine) {
		this.engine = engine;
	}

	public int getClutch() {
		return clutch;
	}

	public void setClutch(int clutch) {
		this.clutch = clutch;
	}

	public int getAlternator() {
		return alternator;
	}

	public void setAlternator(int alternator) {
		this.alternator = alternator;
	}

	public int getSuspension() {
		return suspension;
	}
	
	public void setSuspension(int suspension) {
		this.suspension = suspension;
	}

	public int getSuspensionThreshold() {
		return suspensionThreshold;
	}

	public int getBrakePadsThreshold() {
		return brakePadsThreshold;
	}

	public int getAxleShaftThreshold() {
		return axleShaftThreshold;
	}

	public int getEngineThreshold() {
		return engineThreshold;
	}

	public int getClutchThreshold() {
		return clutchThreshold;
	}

	public int getAlternatorThreshold() {
		return alternatorThreshold;
	}

}
