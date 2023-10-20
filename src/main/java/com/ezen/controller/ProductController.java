package com.ezen.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.biz.dto.CategoryVO;
import com.ezen.biz.dto.ProductVO;
import com.ezen.biz.service.IndexService;
import com.ezen.biz.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService service;
	@Autowired
	private IndexService iservice;
	//카테고리 이동
	@GetMapping("/category")
	public String category(@RequestParam int seq,Model model) {
		//select seq
		//1. 카테고리
		CategoryVO vo=new CategoryVO();
		vo.setSeq(seq);
		//view에 필요한 데이터 담는 곳 
		List<ProductVO> list= service.selectCate_seq(seq);
		model.addAttribute("list", list);
		model.addAttribute("seq", seq);
		
		//view페이지로
		return "product/category";
	}
	
	//디테일로 이동
	@GetMapping("/detail")
	public String detail(@RequestParam int p_no, @RequestParam int seq,Model model) {
		// 1. 카테고리
		List<Map<String, Object>> cate = iservice.selectCategory();
		model.addAttribute("cate", cate);
		//select 
		//ProductVO vo=new ProductVO();
		//vo.setP_no(p_no);
		//view에 필요한 데이터 담는 곳 
		List<ProductVO> list= service.selectCate_seq(seq);
		model.addAttribute("list", list);
		model.addAttribute("seq", seq);
		ProductVO pvo=service.selectp_no(p_no);
		model.addAttribute("pvo", pvo);
		
		//view페이지로 이동
		return "product/detail";
	}
	@GetMapping("/cart")
	public String cart(@RequestParam int p_no,@RequestParam int seq,Model model) {
		
		// 1. 카테고리
		//view에 필요한 데이터 담는 곳 
		List<Map<String, Object>> cate = iservice.selectCategory();
		model.addAttribute("cate", cate);
		List<ProductVO> list= service.selectCate_seq(seq);
		model.addAttribute("list", list);
		ProductVO pvo=service.selectp_no(p_no);
		model.addAttribute("pvo", pvo);
		
		return "product/cart";
		
	}
	
}
