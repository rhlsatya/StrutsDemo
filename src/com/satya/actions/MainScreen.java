package com.satya.actions;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class MainScreen extends ActionSupport {
	
	private int enteredNumber;
	private static int total;

	@Override
	public String execute() throws Exception {
		CalculationService calculationService = new CalculationService();
		System.out.println("before: " +total);
		int now =  calculationService.add(total, enteredNumber);
		
		total = now;
		System.out.println("after: " +total);
		return SUCCESS;
	}

	public int getEnteredNumber() {
		return enteredNumber;
	}

	public void setEnteredNumber(int enteredNumber) {
		this.enteredNumber = enteredNumber;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
	public String getMaxTotal()
	{
		return getText("max.text");
	}

}
