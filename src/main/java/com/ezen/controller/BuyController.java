package com.ezen.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.biz.dto.BuyDetailVO;
import com.ezen.biz.dto.BuyVO;
import com.ezen.biz.dto.ProductVO;
import com.ezen.biz.service.BuyService;
import com.ezen.biz.service.IndexService;
import com.ezen.biz.service.ProductService;

@Controller
public class BuyController {
	@Autowired
	private BuyService bservice;
	
	@Autowired
	private ProductService service;
	
	@Autowired
	private IndexService iservice;
	
	
	
	@GetMapping("buydetail")
	public String buydetail(@RequestParam int p_no,@RequestParam int seq,Model model) {
		System.out.println("buydetail");
		List<Map<String, Object>> cate = iservice.selectCategory();
		model.addAttribute("cate", cate);
		List<ProductVO> list= service.selectCate_seq(seq);
		model.addAttribute("list", list);
		ProductVO pvo=service.selectp_no(p_no);
		model.addAttribute("pvo", pvo);	
		BuyVO vo=new BuyVO();
		vo.setSeq(seq);
		List<BuyDetailVO> bvo=bservice.getBuyDetail(vo);
		//buyDetail 페이지에서 필요한 데이터를 담는다.
		model.addAttribute("bvo",bvo);
		
		
		return "buy/buydetail";
	}
}
