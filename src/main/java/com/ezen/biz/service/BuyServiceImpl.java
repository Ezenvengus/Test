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

	@Override
	public int maxSeq() {
		return 0;
	}

	@Override
	public List<BuyVO> getBuyList(BuyVO vo) {
		return dao.getBuyList(vo);
	}


	public int changeBuy(BuyVO vo) {
		return dao.changeBuy(vo);
	}

	public List<BuyDetailVO> getBuyDetail(BuyVO vo) {
		return dao.getBuyDetail(vo);
	}

	

	

	
	
}
