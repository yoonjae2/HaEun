package com.office.hhaeun.page;

import java.util.Date;

public class PageVo {

	 private int id;
	    private String title;
	    private String author;
	    private String content;
	    private Date date;

	    // 기본 생성자
	    public PageVo() {}
	    
	    // 생성자
	    public PageVo(int id, String title, String author, String content, Date date) {
	        this.id = id;
	        this.title = title;
	        this.author = author;
	        this.content = content;
	        this.date = date;
	    }
	    

	    // Getter 및 Setter
	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getTitle() {
	        return title;
	    }

	    public void setTitle(String title) {
	        this.title = title;
	    }

	    public String getAuthor() {
	        return author;
	    }

	    public void setAuthor(String author) {
	        this.author = author;
	    }

	    public String getContent() {
	        return content;
	    }

	    public void setContent(String content) {
	        this.content = content;
	    }

		public Date getDate() {
			return date;
		}

		public void setDate(Date date) {
			this.date = date;
		}
	}
