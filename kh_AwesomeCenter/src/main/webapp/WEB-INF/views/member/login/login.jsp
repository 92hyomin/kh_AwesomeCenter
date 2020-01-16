<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String ctxPath = request.getContextPath();
%>
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/login.css" />
<script>
$(document).ready(function(){
	$("#logoImg").click(function(){
		location.href="/awesomecenter/main.to";
	});
	
	/* 로그인버튼 */
	$("#loginBtn").click(function(){
		goLogin();
	});
	$("#inputPwd").keydown(function(key) {
        if (key.keyCode == 13) {
            goLogin();
        }
    });

});

function goLogin(){
	var inputId = $("#inputId").val().trim();
	var inputPwd = $("#inputPwd").val().trim();
	
	if(inputId == ""){
		alert("아이디를 입력하세요.");
		$("#inputId").focus();
		return;
	}
	if(inputPwd == ""){
		alert("비밀번호를 입력하세요.");
		$("#inputPwd").focus();
		return;
	}
	
	var frm = document.loginFrm;
	frm.method = "POST";
	frm.action = "<%=ctxPath%>/loginAction.to";
	frm.submit();
	
}
</script>
<div id="loginFrm">
<form name="loginFrm">
	<div id="logo"><img id="logoImg" src="resources/hmimages/logo.png" /></div>
	<div id="loginWrap">
		<input type="text" class="input" id="inputId" name="userid" placeholder="아이디">
		<input type="password" class="input" id="inputPwd" name="userpwd" placeholder="비밀번호">
		<span id="loginBtn">로그인</span>
		<div id="bottomArea">
			<span class="bottomTxt">아이디 찾기 </span>|
			<span class="bottomTxt">비밀번호 찾기 </span>|
			<span class="bottomTxt" onclick="location.href='/awesomecenter/member/Register.to'">회원가입</span>
		</div>
	</div>
</form>
</div>