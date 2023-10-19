package com.ezen.biz.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {
	private int seq;
	private String title,content,id;
	private Date regdate;
}
