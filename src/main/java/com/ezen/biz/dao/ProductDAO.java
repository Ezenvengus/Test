package com.ezen.biz.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ezen.biz.dto.ProductVO;

@Repository
public class ProductDAO  {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<ProductVO> selectCate_seq(int cate_seq) {
		return mybatis.selectList("ProductDAO.selectProductList", cate_seq);	
	}

	public ProductVO selectp_no(int p_no) {
		return mybatis.selectOne("ProductDAO.selectProduct", p_no);
	}

	public List<Map<String, Object>> selectCategory(int seq) {
		return mybatis.selectOne("ProductDAO.selectCategory",seq);
	}
	public void insertProduct(ProductVO vo) {
		mybatis.insert("ProductDAO.insertProduct", vo);
	}
	public void updateInventory(ProductVO vo) {
		mybatis.update("ProductDAO.updateInventory", vo);
	}
	public void updateProduct(ProductVO vo) {
		mybatis.update("ProductDAO.updateProduct", vo);
	}
}
