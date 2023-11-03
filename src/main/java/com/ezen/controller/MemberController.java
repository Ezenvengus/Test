package com.ezen.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.ezen.biz.dto.MemberVO;
import com.ezen.biz.service.MemberService;


import lombok.extern.log4j.Log4j;


@Controller
@Log4j
public class MemberController {
	
	
	@Autowired
	private PasswordEncoder encoder;	
	@Autowired
	private MemberService mservice;
	//login 이동
	@GetMapping("/login")
	public String doMember() {
		//login
		log.info("login");
		return "member/login";
	}
	
	@PostMapping("/login")
	public String Login(MemberVO vo,Model model,HttpServletRequest request) {
		log.info("login-----");
		log.info(vo);
		MemberVO v=mservice.selectMember(vo.getUserid());
		if(v==null) {
			model.addAttribute("error", "없는 아이디 입니다.");
			return "member/register";
		}else {//패스워드 일치 확인
			if(encoder.matches(vo.getUserpwd(), v.getUserpwd())) {
				//로그인 성공 --> 세션에 담기
				HttpSession session=request.getSession();
				session.setAttribute("userid", v.getUserid());
				session.setAttribute("username", v.getUsername());
				return "redirect:/";
			}else {
				model.addAttribute("error", "패스워드가 다릅니다.");
				return "member/register";
			}
		}

	}
	
	
	//register 등록
	@GetMapping("/register")
	public String register() {
		//login
		log.info("register");
		return "member/register";
	}
	
	//register 완료 
	@PostMapping("/register")
    public String register(MemberVO vo){
		
		log.info("register");
		log.info(vo);
		vo.setUserpwd(encoder.encode(vo.getUserpwd()));
		mservice.insertMember(vo);
		return "member/login";
    }
	
	//mypage 등록
		@GetMapping("/mypage")
		public String mypage(Model model,HttpSession session) {
			//
			log.info("mypage");
			// session에 담긴 id로 회원정보를 조회해서 모델에 담는다.
			String userid=(String) session.getAttribute("userid");
			MemberVO vo=mservice.selectMember(userid);
			log.info(vo);
			model.addAttribute("vo", vo);
			// 내가 userid 구매한 목록을 가져온다.
			// 리스트를 모델에 담는다.
			String p_name=(String) session.getAttribute("p_name");
			log.info(vo);
            model.addAttribute("p_name", p_name);
            String cnt=(String) session.getAttribute("cnt");
			log.info(vo);
            model.addAttribute("cnt", cnt);
            
			return "member/mypage";
		}
		
		//mypage 완료 
		@PostMapping("/mypage")
	    public String mypage(MemberVO vo){
			
			log.info("mypage");
			log.info(vo);
			vo.setUserpwd(encoder.encode(vo.getUserpwd()));
			mservice.insertMember(vo);
			return "member/mypage";
	    }
		
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userid");
		return "redirect:/";
	}
	// 회원정보 수정 화면 구현 : GET방식
		@GetMapping(value="/membermodify")
		    public String memberModify(){
			    log.info("membermodify");
		        return "member/membermodify";    
		    }
		// 회원정보 수정 화면 구현 : POST방식
		@PostMapping(value="/membermodify")
	    public String memberModifyPOST(HttpServletRequest req, Model model, MemberVO membervo) throws Exception {
	        
	        HttpSession session = req.getSession();
	        
	       String userid =  (String) session.getAttribute("userid");
	        MemberVO vo=mservice.selectMember(userid);
	        model.addAttribute("vo", vo);
	    
	        return "member/login";    
	    }
		@GetMapping("/updatepwdpage")
		public String updatePwdPage() {
			return "updatePwdPage";
		}
		
		

}