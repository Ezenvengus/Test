package com.ezen.biz.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
     private String userid,userpwd,username,addr,detailaddr;
     private Date regdate;
}
