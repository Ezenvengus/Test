package com.ezen.biz.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BuyVO {
	private int seq;
	private String userid;
	private int p_no,cnt;
	private Date regdate;
}
