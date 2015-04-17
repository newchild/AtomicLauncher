package com.mojang.android.net;

public class HTTPRequest {

	public void abort() {
		System.out.println("HTTPRequest: abort");
	}
	
	public HTTPResponse send(String str) {
		System.out.println("HTTPRequest: send: "+str);
		//
		
		return new HTTPResponse();
	}
	
	public void setContentType(String str) {
		System.out.println("HTTPRequest: setContentType: "+str);
	}
	
	public void setCookieData(String str) {
		System.out.println("HTTPRequest: setCookieData: "+str);
	}
	
	public void setRequestBody(String str) {
		System.out.println("HTTPRequest: setRequestBody: "+str);
	}
	
	public void setURL(String str) {
		System.out.println("HTTPRequest: setURL: "+str);
	}
	
}
