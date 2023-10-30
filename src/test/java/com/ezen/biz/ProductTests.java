package com.ezen.biz;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ezen.biz.dao.ProductDAO;
import com.ezen.biz.dto.ProductVO;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Log4j
public class ProductTests {
	@Autowired
	private ProductDAO dao;
	
	@Test
	public void testselectCate_seq() {
		List<ProductVO> list=dao.selectCate_seq(1);
		log.info(list);
	}
	
	@Test
	public void updateInventoryTest() {
		ProductVO pvo=new ProductVO();
		pvo.setP_no(1);
		pvo.setInventory(105);
		log.info(pvo);
	}
}
