package com.ezen.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.biz.dto.BuyDetailVO;
import com.ezen.biz.dto.BuyVO;
import com.ezen.biz.dto.ProductVO;
import com.ezen.biz.service.BuyService;
import com.ezen.biz.service.IndexService;
import com.ezen.biz.service.ProductService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class BuyController {
	@Autowired
	private BuyService bservice;
	
	@Autowired
	private ProductService pservice;
	
	@Autowired
	private IndexService iservice;
	
	
	@GetMapping("insertBuy")
	public String insertBuy(BuyVO vo, HttpSession session) {

		log.info(session.getAttribute("userid"));
		vo.setUserid((String)session.getAttribute("userid"));
		log.info(vo);
		int seq= bservice.insertBuy(vo);
		ProductVO pvo=new ProductVO();
		pvo.setInventory(vo.getCnt());
		pvo.setP_no(vo.getP_no());
		pservice.updateInventory(pvo);//수량을 수정
		vo.setSeq(seq);
		return "redirect:buyDetail?p_no="+vo.getP_no()+"&seq="+seq+"&cnt="+vo.getCnt();
	}
	
	
	@GetMapping("buyDetail")
	public String buyDetail(@RequestParam int p_no, @RequestParam int seq, @RequestParam int cnt,  Model model) {
		System.out.println("buyDetail");
		List<Map<String, Object>> cate = iservice.selectCategory();
		model.addAttribute("cate", cate);
		List<ProductVO> list= pservice.selectCate_seq(seq);
		model.addAttribute("list", list);
		ProductVO pvo=pservice.selectp_no(p_no);
		model.addAttribute("pvo", pvo);	
		BuyVO vo=new BuyVO();
		vo.setCnt(cnt);
		//buyDetail 페이지에서 필요한 데이터를 담는다.
		model.addAttribute("cnt",cnt);
		return "buy/buyDetail";
	}
}
