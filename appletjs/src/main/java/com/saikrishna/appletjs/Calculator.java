package com.saikrishna.appletjs;
 
import java.applet.Applet;
import java.awt.Button;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import netscape.javascript.JSObject;
 
public class Calculator extends Applet {// implements ActionListener{
	 
	Button button;
	private static final String EXECUTE = "EXECUTE";
 
	public void init(){
		startCalculation();
	}

	private void startCalculation() {
		
		JSObject win = JSObject.getWindow(this);
		Object obj = win.call("getANumber", null);
		//System.out.println("------------------------   "+);
		win.call("displayNumber", new Object[] {obj});
		try {
			int a = Integer.parseInt(obj.toString());
		
			obj = win.call("getANumber", null);
			//System.out.println("------------------------   "+);
			int b = Integer.parseInt(obj.toString());
		
			win.call("displayNumber", new Object[] {"Sum of "+a+" and "+b+" is "+(a+b)});
		} catch(Exception e ){
			win.call("displayError", new Object[] {});
		}
	}
 
	
	
	
	/* @Override
	public void actionPerformed(ActionEvent e) {
		if(e.getActionCommand().equals(EXECUTE)){
			JSObject win = JSObject.getWindow(this);
			win.call("callHello", new String[]{"mkyong"});
		}
	}*/	    
}