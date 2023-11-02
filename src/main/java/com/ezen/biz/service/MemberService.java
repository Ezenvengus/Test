package com.ezen.biz.service;

import java.util.List;

import com.ezen.biz.dto.MemberVO;

public interface MemberService {
	// MemberDAO.insertMember : MemberDAO(namespace),insertMember:쿼리문id
	void insertMember(MemberVO vo);

	MemberVO selectMember(String userid);

	List<MemberVO> selectMemberList();
      
    void memberModifyGET(MemberVO vo); 
	
	void memberModifyPOST(MemberVO vo);

    void memberDelete(MemberVO vo);
	
	
}