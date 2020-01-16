package com.center.member.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.center.common.MyUtilHM;
import com.center.common.SHA256;
import com.center.member.model.MemberVO;
import com.center.member.service.InterMemberService;
import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

@Controller
public class LoginController {
	@Autowired
	private InterMemberService service;
	
	@RequestMapping(value="/member/Register.to")
	public String Register() {
		return "member/login/register.tiles1";
	}
	
/*	@RequestMapping(value = "/smstest.to")
	public String smstest() {
		
		return "member/login/smsTest";
	}*/
	
	//문자를 보낼때 맵핑되는 메소드
	@ResponseBody
    @RequestMapping(value = "/sendSms.to", method= {RequestMethod.POST})
	public String sendSms(String receiver, HttpSession session) throws Exception {
		int rand = (int) (Math.random() * 899999) + 100000;
    	session.setAttribute("rand", rand);

    	//String api_key = "test"; //api key
        //String api_secret = "test";  //api secret
        String api_key = MyUtilHM.coolKey(); //api key
        String api_secret = MyUtilHM.coolSecretKey();  //api secret
        com.center.sms.Coolsms coolsms = new com.center.sms.Coolsms(api_key, api_secret);

        HashMap<String, String> params = new HashMap<String, String>();
        params.put("to", receiver);

        params.put("from", "01086885219"); 
        params.put("text", "안녕하세요 으뜸문화센터 입니다. 인증번호 [" + rand + "] 를 화면에 입력해주세요."); 
        params.put("type", "sms");
        params.put("mode", "test");
        //문자메세지 확인용
        System.out.println(params);

        JSONObject result = coolsms.send(params); 

        if ((boolean)result.get("status") == true) {
          return ""+rand;
        } else {

          System.out.println(result.get("code")); // REST API 에러코드
          //return "fail";
          return ""+rand;
        }
    }
	
	//////////////////////////////////////////////////////////////////////////////////////////
	
	//아이디 중복검사
	@ResponseBody
    @RequestMapping(value = "/idCheck.to", method= {RequestMethod.GET})
	public String sendSms(HttpServletRequest request) throws Exception {
        String userid = request.getParameter("userid");
        int n = service.idCheck(userid);
        return ""+n;
    }
	
	@RequestMapping(value = "/member/registerUser.to", method= {RequestMethod.POST})
	public ModelAndView registerUser(ModelAndView mav, HttpServletRequest request) {
		String userid = request.getParameter("userid");
		String userName = request.getParameter("userName");
		String userpwd = request.getParameter("userpwd");
		String ResidentNum1 = request.getParameter("ResidentNum1");
		String ResidentNum2 = request.getParameter("ResidentNum2");
		String celphone_no1 = request.getParameter("celphone_no1");
		String celphone_no2 = request.getParameter("celphone_no2");
		String celphone_no3 = request.getParameter("celphone_no3");
		String user_email = request.getParameter("user_email");
		String post_code = request.getParameter("post_code");
		String post_address1 = request.getParameter("post_address1");
		String post_address2 = request.getParameter("post_address2");
		String marketingEmail = request.getParameter("marketingEmail");
		String marketingSMS = request.getParameter("marketingSMS");
		/*
		userName: testName
		userid: testid
		userpwd: 1q2w3e4r!
		ResidentNum1: 921123
		ResidentNum2: 1245118
		celphone_no1: 010
		celphone_no2: 8688
		celphone_no3: 5219
		user_email: asdf@naver.com
		post_code: 07803
		post_address1: 서울 강서구 강서로 375
		post_address2: 123
		marketingEmail: Y
		marketingSMS: null
		*/
		if(marketingEmail == null) {
			marketingEmail = "N";
		}
		if(marketingSMS == null) {
			marketingSMS = "N";
		}
//		System.out.println("userName: " + userName);
//		System.out.println("userid: " + userid);
//		System.out.println("userpwd: " + userpwd);
//		System.out.println("ResidentNum1: " + ResidentNum1);
//		System.out.println("ResidentNum2: " + ResidentNum2);
//		System.out.println("celphone_no1: " + celphone_no1);
//		System.out.println("celphone_no2: " + celphone_no2);
//		System.out.println("celphone_no3: " + celphone_no3);
//		System.out.println("user_email: " + user_email);
//		System.out.println("post_code: " + post_code);
//		System.out.println("post_address1: " + post_address1);
//		System.out.println("post_address2: " + post_address2);
//		System.out.println("marketingEmail: " + marketingEmail);
//		System.out.println("marketingSMS: " + marketingSMS);
		
		HashMap<String, String> paraMap = new HashMap<String, String>();
		paraMap.put("userid", userid);
		paraMap.put("userName", userName);
		paraMap.put("userpwd", SHA256.encrypt(userpwd));
		paraMap.put("ResidentNum1", ResidentNum1);
		paraMap.put("ResidentNum2", SHA256.encrypt(ResidentNum2));
		paraMap.put("celphone_no1", celphone_no1);
		paraMap.put("celphone_no2", celphone_no2);
		paraMap.put("celphone_no3", celphone_no3);
		paraMap.put("user_email", user_email);
		paraMap.put("post_code", post_code);
		paraMap.put("post_address1", post_address1);
		paraMap.put("post_address2", post_address2);
		paraMap.put("marketingEmail", marketingEmail);
		paraMap.put("marketingSMS", marketingSMS);
		
		int n = service.registerUser(paraMap);
		String msg = "";
		String loc = request.getContextPath()+"/main.to";
		if(n==0) {
			msg = "회원가입에 실패했습니다. 고객센터에 문의하세요";
		}
		else {
			msg = "회원가입에 성공했습니다.";
		}
		mav.addObject("msg",msg);
		mav.addObject("loc",loc);
		mav.setViewName("msg");
		return mav;
	}
	
	@RequestMapping(value="/login.to")
	public String login() {
		return "member/login/login.tiles1";
	}
	
	@RequestMapping(value="/loginAction.to", method= {RequestMethod.POST})
	public ModelAndView loginAction(ModelAndView mav, HttpServletRequest request, HttpSession session) {
		String userid = request.getParameter("userid");
		String userpwd = request.getParameter("userpwd");
		
		HashMap<String, String> paraMap = new HashMap<String, String>();
		paraMap.put("userid", userid);
		paraMap.put("userpwd", SHA256.encrypt(userpwd));
		
		MemberVO loginuser = service.isExistUser(paraMap);
		String msg = "";
		String loc = "";
		
		if(loginuser==null) {
			msg = "회원정보가 일치하지 않습니다.";
			loc = request.getContextPath()+"/login.to";
		}
		else {
			msg = "로그인성공!";
			loc = request.getContextPath()+"/main.to";
			session.setAttribute("loginuser", loginuser);
		}
		
		mav.addObject("msg",msg);
		mav.addObject("loc",loc);
		mav.setViewName("msg");
		
		return mav;
	}
	
	@RequestMapping(value="/logout.to")
	public String logout() {
		return "member/login/logout";
	}
	
}
