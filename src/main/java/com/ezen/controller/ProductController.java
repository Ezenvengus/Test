package com.ezen.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.biz.dto.BuyDetailVO;
import com.ezen.biz.dto.BuyVO;
import com.ezen.biz.dto.CategoryVO;
import com.ezen.biz.dto.ProductVO;
import com.ezen.biz.service.BuyService;
import com.ezen.biz.service.IndexService;
import com.ezen.biz.service.ProductService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class ProductController {
	@Autowired
	private ProductService pservice;
	@Autowired
	private IndexService iservice;
	@Autowired
	private BuyService bservice;
	//카테고리 이동
	@GetMapping("/category")
	public String category(@RequestParam int seq,Model model) {
		//select seq
		//1. 카테고리
		CategoryVO vo=new CategoryVO();
		vo.setSeq(seq);
		//view에 필요한 데이터 담는 곳 
		List<ProductVO> list= pservice.selectCate_seq(seq);
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
		List<ProductVO> list= pservice.selectCate_seq(seq);
		model.addAttribute("list", list);
		model.addAttribute("seq", seq);
		ProductVO pvo=pservice.selectp_no(p_no);
		model.addAttribute("pvo", pvo);
		//buyDetail 페이지에서 필요한 데이터를 담는다.
		//view페이지로 이동
		return "product/detail";
	}
	//카트 집어넣기( - insert
	@RequestMapping(value="insertProduct",method = RequestMethod.GET)
		public String insertProduct() {
			return "product/cart";
	}
	//(inventory 에서빼기 -update
	@RequestMapping(value = "updateProduct",method = RequestMethod.GET)
	public String updateProduct() {
		return "product/cart";
	}
	@GetMapping("/cart")
	public String cart(@RequestParam int p_no,@RequestParam int seq,@RequestParam int cnt,Model model) {
		log.info(cnt);
		// 1. 카테고리
		//view에 필요한 데이터 담는 곳 
		List<Map<String, Object>> cate = iservice.selectCategory();
		model.addAttribute("cate", cate);
		List<ProductVO> list= pservice.selectCate_seq(seq);
		model.addAttribute("list", list);
		ProductVO pvo=pservice.selectp_no(p_no);
		model.addAttribute("pvo", pvo);
		BuyVO vo=new BuyVO();
		vo.setCnt(cnt);
		model.addAttribute("cnt",cnt);
		//buyDetail 페이지에서 필요한 데이터를 담는다.
		
		return "product/cart";
		
	}
}
