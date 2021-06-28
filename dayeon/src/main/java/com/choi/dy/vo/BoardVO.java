package com.choi.dy.vo;

import java.sql.*;
import java.text.*;

public class BoardVO {

	private int bno, upno;
	private String title, body, isshow, sdate;
	private Date adate;
	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getUpno() {
		return upno;
	}
	public void setUpno(int upno) {
		this.upno = upno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getIsshow() {
		return isshow;
	}
	public void setIsshow(String isshow) {
		this.isshow = isshow;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(Date adate) {
		SimpleDateFormat form1 = new SimpleDateFormat("yyyy/MM/dd");
		sdate = form1.format(adate);
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public Date getAdate() {
		return adate;
	}
	public void setAdate(Date adate) {
		this.adate = adate;
	}
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", upno=" + upno + ", title=" + title + ", body=" + body + ", isshow=" + isshow
				+ ", sdate=" + sdate + ", adate=" + adate + "]";
	}
	
	
	
}
