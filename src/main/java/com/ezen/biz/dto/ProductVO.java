package com.ezen.biz.dto;

import java.util.Date;

import lombok.Data;

@Data	
public class ProductVO {
	private int p_no;
	private String p_name;
	private int parts,price,inventory;
	private String details;
	private Date regdate;
	private String disp;
	private int cate_seq;
	private String imagefile;
	private Integer maining,specialing,nawing;
	
}
