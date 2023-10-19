package com.ezen.biz.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class CategoryVO {
	private int seq;
	private String cate_name;
	private Integer disp_no;
	private String disp;
	private Date regdate;
}
