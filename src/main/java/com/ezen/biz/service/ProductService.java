package com.ezen.biz.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ezen.biz.dto.ProductVO;

public interface ProductService {

	List<ProductVO> selectCate_seq(int cate_seq);

	ProductVO selectp_no(int p_no);

	List<Map<String, Object>> selectCategory(int seq);

	void updateProduct(ProductVO vo);
	
	void insertProduct(ProductVO vo);
	
	void updateInventory(ProductVO vo);
}