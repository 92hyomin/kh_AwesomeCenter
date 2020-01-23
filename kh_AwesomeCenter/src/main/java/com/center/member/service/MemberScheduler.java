package com.center.member.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.center.member.model.ClassVO;
import com.center.member.model.InterMemberDAO;
import com.center.member.model.OrderListVO;

@Component
public class MemberScheduler {

	@Autowired
	private InterMemberDAO dao;
	
	@Scheduled(cron="0 0 10 * * *")
	public void testschedule() {

		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
			int cnt = 0;
		
		try {
			
			// 오늘 날짜
			Date time = new Date();
			String sys = format.format(time);
			Date sysdate = format.parse(sys);
			
			// 수강 내역에 있는 강좌 조회
			List<OrderListVO> orderList = dao.getAllOrderList();
			
			String[] noArr = new String[orderList.size()];
			
			for(int i=0; i<orderList.size(); i++) {
				noArr[i] = orderList.get(i).getClass_seq_fk();
			}
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("noArr", noArr);
			
			// 강좌별 시작날짜, 끝날짜 조회
			List<ClassVO> classList = null;
			
			if( !(noArr.length == 0) ) {
				classList = dao.getAllClassList(map);
			
				for(int i=0; i<classList.size(); i++) {
					// 강좌번호
					String classno = classList.get(i).getClass_seq();
					
					// 시작날짜
					Date startdate = format.parse(classList.get(i).getClass_startdate());
					// 끝날짜
					Date enddate = format.parse(classList.get(i).getClass_enddate());
					
					// 시작날짜 - 오늘날짜
					long Start_Sys = ( startdate.getTime() - sysdate.getTime() ) / (24 * 60 * 60 * 1000);
					// 끝날짜 - 오늘날짜
					long End_Sys = ( enddate.getTime() - sysdate.getTime() ) / (24 * 60 * 60 * 1000);
					
					String status = "";
					
					if( Start_Sys > 7 ) {
						status = "0";
					} else if( 0 < Start_Sys && Start_Sys < 7 ) {
						status = "2";
					} else if( End_Sys > 0 && Start_Sys <= 0 ) {
						status = "3";
					} else if( End_Sys < 0 ) {
						status = "4";
					} else {
						status = "0";
					}
					
					HashMap<String, String> paraMap = new HashMap<String, String>();
					paraMap.put("status", status);
					paraMap.put("classno", classno);
					
					// 주문내역 상태 업데이트
					int n = dao.updateOrderListStatus(paraMap);
					
					if(n >= 1) {
						cnt++;
					}
				
				}
			
			}
			
			System.out.println(sys+"\n주문 내역 status"+cnt+" 개 업데이트 완료");
		
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	
}