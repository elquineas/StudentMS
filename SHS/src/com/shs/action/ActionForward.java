package com.shs.action;

public class ActionForward {
	private String path;
	
	// 페이지 넘길 때 2가지 방법
	// 1) sendRedirect
	// 2) forward
	// true -> sedRedirect
	// false -> forward
	
	private boolean isRedirect;
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return isRedirect;
	}
	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}
