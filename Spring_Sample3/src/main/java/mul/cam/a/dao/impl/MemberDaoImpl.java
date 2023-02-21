package mul.cam.a.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import mul.cam.a.dao.MemberDao;
import mul.cam.a.dto.MemberDto;


@Repository
public class MemberDaoImpl implements MemberDao{
	// dao -> myBatis 생성 및 접근
	
	@Autowired // 객체 자동생성(new ~)
	SqlSession session; // applicationContext.xml 
	
	@Override
	public List<MemberDto> allMember() {
		// TODO Auto-generated method stub
		return session.selectList("Member."+"allMember"); // mapper
	}
}
