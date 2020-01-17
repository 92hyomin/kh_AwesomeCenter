package com.center.teacherAdmin.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.center.teacherAdmin.model.TeacherAdminVO;
import com.center.teacherAdmin.service.InterTeacherAdminService;

@Controller
public class TeacherAdminController {

	@Autowired
	private InterTeacherAdminService service;
	
	// 관리자	
	// 강사 등록 
	@RequestMapping(value="/registerTeacherAdmin.to")
	public String registerTeacherAdmin() {
		return "admin/teacherAdmin/registerTeacherAdmin.tiles1";
	}
	
	// 강사 정보 수정 
	@RequestMapping(value="/editTeacherAdmin.to")
	public String editTeacherAdmin() {
		return "admin/teacherAdmin/editTeacherAdmin.tiles1";
	}
	
	// 강사 리스트  불러오기
	@RequestMapping(value="/teacherListAdmin.to", method= {RequestMethod.GET})
	public ModelAndView teacherListAdmin(ModelAndView mav, HttpServletRequest request) {
		
		List<TeacherAdminVO> teacherList = null;
		
		String str_pageNo = request.getParameter("pageNo");
		
		int totalCount = 0;
		int sizePerPage = 10;
		int pageNo = 0;
		int totalPage = 0;
		int startRno = 0;
		int endRno = 0;
		
		String searchCode = request.getParameter("searchCode");
		String searchName = request.getParameter("searchName");
		String searchText = request.getParameter("searchText");
		
		System.out.println("확인:"+searchName);
		
		if(searchText == null || searchText.trim().isEmpty()) {
			searchText = "";
		}
		
		HashMap<String, String> paraMap = new HashMap<String,String>();
		
		paraMap.put("searchCode", searchCode);
		paraMap.put("searchName", searchName);
		paraMap.put("searchText", searchText);
		
		if("".equals(searchText)) {
			totalCount = service.getTotalCountNoSearch();
		} 
		else {
			totalCount = service.getTotalCountSearch(paraMap);
		}
		
		totalPage = (int)Math.ceil((double)totalCount/sizePerPage);
		
		if(str_pageNo == null) {
			pageNo = 1;
		}
		else {
			try {
				pageNo = Integer.parseInt(str_pageNo);
				
				if(pageNo < 1 || pageNo > totalPage) {
					pageNo = 1;
				}
				
			} catch (Exception e) {
				pageNo = 1;
			}
		}
		
	    startRno = ((pageNo-1) * sizePerPage) +1;
    	endRno =  startRno + sizePerPage - 1;
		
		paraMap.put("startRno", String.valueOf(startRno));
		paraMap.put("endRno", String.valueOf(endRno));
		
		teacherList = service.getTeacherList(paraMap);
		
		if(!"".equals(searchText)) {
			mav.addObject("paraMap", paraMap);
		}
		
		
		
		String pageBar = "<ul>";
		
		int blockSize = 10;
		int loop = 1;
		int pageBarNo = ((pageNo-1)/blockSize) * blockSize + 1;
		
		String url = "teacherListAdmin.to";
		String lastStr = url.substring(url.length()-1);
		
		if(!"?".equals(lastStr) ) {
			url += "?";
		}
		
		// 이전
		if(pageBarNo != 1) {
			pageBar += "&nbsp;<a href='"+url+"&pageNo="+(pageBarNo-1)+"&sizePerPage="+sizePerPage+"&searchCode="+searchCode+"&searchName="+searchName+"&searchText="+searchText+"'>[이전]</a>&nbsp;";
		}
		
		while( !(loop>blockSize || pageBarNo>totalPage) ) {
			if(pageBarNo == pageNo) {
				pageBar += "&nbsp;<span>"+pageBarNo+"</span>&nbsp;";
			}
			else {
				pageBar += "&nbsp;<a href='"+url+"&pageNo="+pageBarNo+"&sizePerPage="+sizePerPage+"&searchCode="+searchCode+"&searchName="+searchName+"&searchText="+searchText+"'>"+pageBarNo+"</a>&nbsp;";
			}
			loop++;
			pageBarNo++;
		}
		
		// 다음
		if( !(pageBarNo>totalPage) ) {
			pageBar += "&nbsp;<a href='"+url+"&pageNo="+pageBarNo+"&sizePerPage="+sizePerPage+"&searchCode="+searchCode+"&searchName="+searchName+"&searchText="+searchText+"'>[다음]</a>&nbsp;"; 
		}
		pageBar += "</ul>";
		
		mav.addObject("pageBar", pageBar);
		
		
		
		
		mav.addObject("teacherList", teacherList);
		mav.setViewName("admin/teacherAdmin/teacherListAdmin.tiles1");
		
		return mav;
	}

	// 강사 정보 상세 
	@RequestMapping(value="/detailTeacherAdmin.to")
	public String detailTeacherAdmin() {
		
		return "admin/teacherAdmin/detailTeacherAdmin.tiles1";
	}

	
	

	
}
