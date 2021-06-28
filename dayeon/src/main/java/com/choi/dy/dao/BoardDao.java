package com.choi.dy.dao;

import java.util.*;

import org.mybatis.spring.*;
import org.springframework.beans.factory.annotation.*;

import com.choi.dy.util.*;

public class BoardDao {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	//게시글 총 갯수 확인 메서드
	public int getCnt() {
		return sqlSession.selectOne("bSQL.bdCnt");
	}
	
	//게시글 리스트 조회 메서드
	public List getBdList(PageUtil page) {
		return sqlSession.selectList("bSQL.bdList", page);
	}
	
}
