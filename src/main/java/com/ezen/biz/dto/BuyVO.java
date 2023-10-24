package com.ezen.biz.dto;

import java.util.Date;

import lombok.Data;

@Data
public class BuyVO {
	private int seq;
	private String id;
	private int p_seq,cnt;
	private Date regdate;
}
