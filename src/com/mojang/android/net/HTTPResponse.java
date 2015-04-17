package com.mojang.android.net;

public class HTTPResponse {

	public String getBody() {
		return "";
	}
	
	public int getResponseCode() {
		return -100;
	}
	
	public int getStatus() {
		return 0;
	}
	
	public void setBody(String str) {
		System.out.println("HTTPResponse: setBody: "+str);
	}
	
	public void setResponseCode(int i) {
		System.out.println("HTTPResponse: setResponseCode: "+i);
	}
	
	public void setStatus(int i) {
		System.out.println("HTTPResponse: setStatus: "+i);
	}
	
}
