package com.ezen.biz.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ezen.biz.dto.BuyDetailVO;
import com.ezen.biz.dto.BuyVO;

public interface BuyService {
	// 메소드 정의
	public List<BuyDetailVO> getBuyDetail(BuyVO vo);

	int maxSeq();

	List<BuyVO> getBuyList(BuyVO vo);
	
	public int changeBuy(BuyVO vo);

	int insertBuy(BuyVO vo);


	

	

	

}