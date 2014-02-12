package com.mkyong.applet;
 
import java.applet.Applet;
import java.awt.Button;
import java.awt.FlowLayout;
import java.awt.TextArea;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import netscape.javascript.JSObject;
 
public class JavaToJavaScript extends Applet implements ActionListener{
	 
	Button button;
	private static final String EXECUTE = "EXECUTE";
 
	public void init(){
		setLayout(new FlowLayout());
	    button = new Button();
	    button.addActionListener(this);
	    button.setActionCommand(EXECUTE);
	    button.setLabel("Execute Javascript");
	    add(button);
	}
 
	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getActionCommand().equals(EXECUTE)){
			JSObject win = JSObject.getWindow(this);
			win.call("callHello", new String[]{"mkyong"});
		}
	}	    
}