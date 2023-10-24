package com.ezen.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.biz.dto.BuyDetailVO;
import com.ezen.biz.dto.BuyVO;

@Repository
public class BuyDAO {

	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 메소드 정의
		public int maxSeq() {
			return mybatis.selectOne("BuyDAO.maxSeq");
		}

		public List<BuyVO> getBuyList(BuyVO vo) {
			return mybatis.selectList("BuyDAO.getBuyList", vo);
		}

		public BuyDetailVO BuyDetail(BuyVO vo) {
			return mybatis.selectOne("BuyDAO.BuyDetail",vo);
		}
		public int changeBuy(BuyVO vo) {
			return mybatis.update("BuyDAO.changeBuy", vo);
		}

		public List<BuyDetailVO> getBuyDetail(BuyVO vo) {
		return mybatis.selectList("BuyDAO.getBuyDetail", vo);
	}

}
