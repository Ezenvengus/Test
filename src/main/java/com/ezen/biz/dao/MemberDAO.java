package com.ezen.biz.dao;

import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.ezen.biz.dto.MemberVO;

@Repository
public class MemberDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertMember(MemberVO vo) {
		mybatis.insert("MemberDAO.insertMember", vo);
	}
	public MemberVO selectMember(String userid) {
		return mybatis.selectOne("MemberDAO.selectMember", userid);
	}
	public List<MemberVO> selectMemberList(){
		return mybatis.selectList("MemberDAO.selectMemberList");
	}
	 public void updateMember(MemberVO vo) {
		 mybatis.update("MemberDAO.updateMember", vo);
	 }
}
