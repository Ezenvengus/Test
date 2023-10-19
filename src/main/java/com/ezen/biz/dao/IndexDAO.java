package com.ezen.biz.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.biz.dto.MainViewImgVO;
import com.ezen.biz.dto.NoticeVO;
import com.ezen.biz.dto.ProductVO;

@Repository
public class IndexDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<Map<String, Object>> selectCategory(){
		return mybatis.selectList("kidultstoreMain.selectCategory");
	}
	public MainViewImgVO selectMainimg() {
		return mybatis.selectOne("kidultstoreMain.selectMainimg");
	}
	public List<NoticeVO> selectMainNotice() {
		return mybatis.selectList("kidultstoreMain.selectMainNotice");
	}
	public List<Map<String, Object>> selectMainNoticeMap() {
		return mybatis.selectList("kidultstoreMain.selectMainNoticeMap");
	}
	public List<MainViewImgVO> selectMainSpecialimg() {
		return mybatis.selectList("kidultstoreMain.selectMainSpecialimg");
	}
	public List<ProductVO> selectMainNewimg() {
		return mybatis.selectList("kidultstoreMain.selectMainNewimg");
	}
	
}