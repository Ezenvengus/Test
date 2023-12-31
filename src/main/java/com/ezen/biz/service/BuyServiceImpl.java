package com.ezen.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.biz.dao.BuyDAO;
import com.ezen.biz.dao.IndexDAO;
import com.ezen.biz.dto.BuyDetailVO;
import com.ezen.biz.dto.BuyVO;
import com.ezen.biz.dto.ProductVO;
@Service
public class BuyServiceImpl implements BuyService {
	
	@Autowired
	private BuyDAO dao;

	
	public List<BuyVO> getBuyList(BuyVO vo) {
		return dao.getBuyList(vo);
	}


	public int changeBuy(BuyVO vo) {
		return dao.changeBuy(vo);
	}

	public List<BuyDetailVO> getBuyDetail(BuyVO vo) {
		return dao.getBuyDetail(vo);
	}

	
	public int insertBuy(BuyVO vo) {
		dao.insertBuy(vo);//구매테이블에 추가
		//재고수량 감소
		//가장 큰 값
		return dao.maxSeq();
	}


	@Override
	public void updateBuy(BuyVO vo) {
		dao.updateBuy(vo);
		
	}

	

	

	
	
}
