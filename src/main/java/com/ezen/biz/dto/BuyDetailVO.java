package com.ezen.biz.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class BuyDetailVO {
	//buy
	private int seq;
	private String userid;
	private int p_no,cnt;
	private Date regdate;
	//product
	private String p_name;
	private int parts,price,inventory;
}
