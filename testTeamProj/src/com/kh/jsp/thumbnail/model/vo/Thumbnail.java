package com.kh.jsp.thumbnail.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.ArrayList;

import com.kh.jsp.recipe.model.vo.Recipe;

public class Thumbnail extends Recipe implements Serializable{

	private static final long serialVersionUID = 1000L; // 
	
	private ArrayList<Attachment> attachments;

	public Thumbnail() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Thumbnail(int rb_no, String rb_writer, String rb_title, String rb_content, Date rb_date,
			int rb_recommend_count, int rb_value, int rb_count, String rb_attachment) {
		super(rb_no, rb_writer, rb_title, rb_content, rb_date, rb_recommend_count, rb_value, rb_count, rb_attachment);
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Thumbnail [attachments=" + attachments + ", getAttachments()=" + getAttachments() + ", toString()="
				+ super.toString() + ", getRb_no()=" + getRb_no() + ", getRb_writer()=" + getRb_writer()
				+ ", getRb_title()=" + getRb_title() + ", getRb_content()=" + getRb_content() + ", getRb_date()="
				+ getRb_date() + ", getRb_recommend_count()=" + getRb_recommend_count() + ", getRb_value()="
				+ getRb_value() + ", getRb_count()=" + getRb_count() + ", getRb_attachment()=" + getRb_attachment()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + "]";
	}


	public ArrayList<Attachment> getAttachments() {
		return attachments;
	}

	public void setAttachments(ArrayList<Attachment> attachments) {
		this.attachments = attachments;
	}
	
}

