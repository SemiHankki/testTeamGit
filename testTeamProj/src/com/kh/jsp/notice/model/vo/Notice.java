package com.kh.jsp.notice.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class Notice implements Serializable {
	
	private static final long serialVersionUID = 123L;
	
	    // 1. 필드변수 
	
		private int n_no;               // 공지사항 번호
		private String n_writer;        // 작성자
		private String n_title;         // 공지사항 제목
		private String n_content;       // 공지사항 내용
		private Date n_date;            // 작성일 
		private int n_count;            // 조회수
		private String n_attachment;    // 첨부파일 
		
		
		// 2. 생성자 

		public Notice() {}

		public Notice(int n_no, String n_writer, String n_title, String n_content, Date n_date, int n_count,
				String n_attachment) {
			super();
			this.n_no = n_no;
			this.n_writer = n_writer;
			this.n_title = n_title;
			this.n_content = n_content;
			this.n_date = n_date;
			this.n_count = n_count;
			this.n_attachment = n_attachment;
		}

		public Notice(String n_writer, String n_title, String n_content) {
			super();
			this.n_writer = n_writer;
			this.n_title = n_title;
			this.n_content = n_content;
		}

		
		// 3. 기능제공 메소드 
		
		@Override
		public String toString() {
			return "Notice [n_no=" + n_no + ", n_writer=" + n_writer + ", n_title=" + n_title + ", n_content="
					+ n_content + ", n_date=" + n_date + ", n_count=" + n_count + ", n_attachment=" + n_attachment
					+ "]";
		}

		public int getN_no() {
			return n_no;
		}

		public void setN_no(int n_no) {
			this.n_no = n_no;
		}

		public String getN_writer() {
			return n_writer;
		}

		public void setN_writer(String n_writer) {
			this.n_writer = n_writer;
		}

		public String getN_title() {
			return n_title;
		}

		public void setN_title(String n_title) {
			this.n_title = n_title;
		}

		public String getN_content() {
			return n_content;
		}

		public void setN_content(String n_content) {
			this.n_content = n_content;
		}

		public Date getN_date() {
			return n_date;
		}

		public void setN_date(Date n_date) {
			this.n_date = n_date;
		}

		public int getN_count() {
			return n_count;
		}

		public void setN_count(int n_count) {
			this.n_count = n_count;
		}

		public String getN_attachment() {
			return n_attachment;
		}

		public void setN_attachment(String n_attachment) {
			this.n_attachment = n_attachment;
		}

	
		
}
