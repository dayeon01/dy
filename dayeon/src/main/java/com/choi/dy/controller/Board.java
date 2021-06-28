package com.choi.dy.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import com.choi.dy.dao.*;
import com.choi.dy.util.*;
import com.choi.dy.vo.*;

@Controller
@RequestMapping("/board")
public class Board {
	@Autowired 
	BoardDao bDao;
	
	//게시글 리스트 보기 함수
	@RequestMapping("/boardList.dy")
	public ModelAndView boardList(ModelAndView mv, PageUtil page) {
		int total = bDao.getCnt();
		page.setPage(page.getNowPage(), total, 4, 4);
		
		List list = bDao.getBdList(page);
		System.out.println("List" + list);
		for (Object o : list) {
			BoardVO bVO = (BoardVO) o;
			bVO.setSdate(bVO.getAdate());
		}
		mv.addObject("PAGE", page);
		mv.addObject("LIST", list);
		
		mv.setViewName("board/boardList");
		
		return mv;
	}
}
