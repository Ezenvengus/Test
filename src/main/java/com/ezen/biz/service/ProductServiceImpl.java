package com.ezen.biz.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezen.biz.dao.ProductDAO;
import com.ezen.biz.dto.ProductVO;
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private ProductDAO dao;
	
	@Override
	public List<ProductVO> selectCate_seq(int cate_seq) {
		return dao.selectCate_seq(cate_seq);
	}

	@Override
	public ProductVO selectp_no(int p_no) {
		return dao.selectp_no(p_no);
	}

	@Override
	public List<Map<String, Object>> selectCategory(int seq) {
		return dao.selectCategory(seq);
	}

	@Override
	public void changeInventory(ProductVO vo) {
		dao.changeinventory(vo);
		
	}

	




	

}
