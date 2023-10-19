package com.ezen.biz.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.biz.dao.IndexDAO;
import com.ezen.biz.dto.CategoryVO;
import com.ezen.biz.dto.DetailVO;
import com.ezen.biz.dto.MainViewImgVO;
import com.ezen.biz.dto.NoticeVO;
import com.ezen.biz.dto.ProductVO;
@Service
public class IndexServiceImpl implements IndexService {

	@Autowired
	private IndexDAO dao;
	
	@Override
	public List<Map<String, Object>> selectCategory() {
		return dao.selectCategory();
	}

	@Override
	public MainViewImgVO selectMainimg() {
		return dao.selectMainimg();
	}

	@Override
	public List<NoticeVO> selectMainNotice() {
		return dao.selectMainNotice();
	}

	@Override
	public List<Map<String, Object>> selectMainNoticeMap() {
		return dao.selectMainNoticeMap();
	}

	@Override
	public List<MainViewImgVO> selectMainSpecialimg() {
		return dao.selectMainSpecialimg();
	}

	@Override
	public List<ProductVO> selectMainNewimg() {
		return dao.selectMainNewimg();
	}

	@Override
	public DetailVO getDetailVO(CategoryVO vo) {
		return null;
	}


}
