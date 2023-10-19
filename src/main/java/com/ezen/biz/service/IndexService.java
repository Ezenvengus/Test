package com.ezen.biz.service;

import java.util.List;
import java.util.Map;

import com.ezen.biz.dto.CategoryVO;
import com.ezen.biz.dto.DetailVO;
import com.ezen.biz.dto.MainViewImgVO;
import com.ezen.biz.dto.NoticeVO;
import com.ezen.biz.dto.ProductVO;

public interface IndexService {

	List<Map<String, Object>> selectCategory();

	MainViewImgVO selectMainimg();

	List<NoticeVO> selectMainNotice();

	List<Map<String, Object>> selectMainNoticeMap();

	List<MainViewImgVO> selectMainSpecialimg();

	List<ProductVO> selectMainNewimg();

	DetailVO getDetailVO(CategoryVO vo);

}