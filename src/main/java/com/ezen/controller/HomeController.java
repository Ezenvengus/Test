package com.ezen.controller;

import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ezen.biz.dto.MainViewImgVO;
import com.ezen.biz.dto.ProductVO;
import com.ezen.biz.service.IndexService;

@Controller
public class HomeController {
	@Autowired
	private IndexService iservice;
	private final String imgPath = "D:/upload/productimg/";

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		// DB에서 필요한 데이터를 가져와서 담아서 보낸다.
		// 1. 카테고리
		List<Map<String, Object>> cate = iservice.selectCategory();
		model.addAttribute("cate", cate);
		// 2. 공지사항
//		List<NoticeVO> noti=service.selectMainNotice();
//		model.addAttribute("noti", noti);
//		System.out.println(noti);
		List<Map<String, Object>> noti = iservice.selectMainNoticeMap();
		System.out.println(noti);
		model.addAttribute("noti", noti);
		// 메인 이미지
		MainViewImgVO mainimg = iservice.selectMainimg();
		model.addAttribute("mainimg", mainimg);
		// special 이미지
		List<MainViewImgVO> spimgs = iservice.selectMainSpecialimg();
		model.addAttribute("spimgs", spimgs);
		// new 이미지
		List<ProductVO> newimgs = iservice.selectMainNewimg();
		model.addAttribute("newimgs", newimgs);
		return "home";
	}

	// 이미지 다운로드 메소드
	@GetMapping("/imgDown")
	public void imgDown(@RequestParam String filename, HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		String pathFilename = imgPath + filename;// 경로 포함 파일명
		System.out.println("pathFilename=" + pathFilename);
		// 이미지를 다른이름으로 다운로드할 때 uuid제외한 파일명 수정
		if (filename != null && filename.length() > 0) {
			filename = filename.substring(37);
			// 웹브라우저의 종류 확인
			String agent = request.getHeader("User-Agent");
			System.out.println(agent);
			// ie 7 또는 edge
			boolean ieBrowser = (agent.indexOf("Trident") > -1) || (agent.indexOf("Edge") > -1);
			if (ieBrowser) {
				filename = URLEncoder.encode(filename, "utf-8").replace("\\", "%20");
			} else {// edge, 파이어폭스, 크롬
				filename = new String(filename.getBytes("utf-8"), "iso-8859-1");
			}
			response.setContentType("image/jpg");
			// 다운로드 되는 파일명 설정
			response.setHeader("Content-Disposition", "attachment;filename=" + filename);
			FileInputStream in = new FileInputStream(pathFilename);// 파일 open
			// 출력할 곳
			BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());
			int numRead;
			byte b[] = new byte[4096];// 4K만큼
			while ((numRead = in.read(b, 0, b.length)) != -1) {
				out.write(b, 0, numRead);
			} // end while
			out.flush();// 버퍼에 남은것 출력
			in.close();
			out.close();
		}
	}

}
