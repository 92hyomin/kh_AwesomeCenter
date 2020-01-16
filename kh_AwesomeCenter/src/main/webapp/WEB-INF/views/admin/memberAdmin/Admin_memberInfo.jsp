<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- ======= tile1 의 header 페이지 만들기  ======= --%>
<%
	String cxtpath = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<title>회원정보</title>

<style>

	#JoinWrap{
		/* border: solid 1px pink;  */
		padding: 35px 50px 35px 50px;
		width: 70%;
		margin: 0 auto;
		
	}
	
 	#titlearea{
	 	/*  border: solid 1px purple;  */ 
	 	padding: 0px 30px 35px 30px;
		text-align: center; 
		color: #00a0e2;
		text-decoration: underline;
		margin: 0px 100px 50px 100px;
	}
	
	.joinTH{
		border: solid 1px #dfdfdf; 
		width: 150px;
		padding: 11px 0px 11px 10px;
		display: inline-block;
		background-color:#fbfafa;
		border-bottom: hidden;
		border-right: hidden;
	}
	
	.joinTD{
	    border: solid 1px #dfdfdf; 
		width: 780px;
		display:inline-block;
		padding: 8px 0px 8px 8px;
		background-color: white;
		border-bottom: hidden;
	}
	
	#memberJoinbutton{
		display: block;
		margin: 30px 0px 10px 0px;
		
	}
	
	#memberJoinbutton1{
		display: block;
		margin: 0px auto;
		float: inherit; 
    	cursor: pointer;
	}
	
	span.error {
		color: red; 
		font-size: 10pt;  
	}  
	       
	#layer {	     
		border: solid 1px black; 
		width: 300px;    
		color: #ff6666; 
		padding: 10px;
		font-size: 9pt;
		line-height: 1.5;
		background: white;
		position: absolute;
	}  
	
	#memberList_h2 h2 {
   
      font-weight: 500;
      font-size: 52px;
      margin-bottom: 20px;
      letter-spacing: -3px;
      font-family: "Noto Sans Kr";
   
   }
    
	
</style>
<script type="text/javascript">

	function goDetailMember(idx){

		location.href=""+idx;

	}

</script>

<form name="registerFrm" method="post">
<div id="JoinWrap">
	
	<div align="center" id = "memberList_h2">
         <h2>${mbrlist.name}님 상세 정보</h2>
    </div>
	
	<div id="Join2">
	<span style="display: block; font-weight: bold; font-size: 12pt; margin:30px 0px 20px 0px;">기본정보</span>
		<table style="display: block; width: 1000px;">
			<tr>
			<th class="joinTH">아이디</th>
				<td class="joinTD">
				 	<input type="text" name="userid" id="userid"/>
				 	
					<input type="hidden" id="idDuplicate" />
				</td>	
			</tr>
			
			<tr>	      
				<th class="joinTH" style="max-height: 43px;">비밀번호</th>
				<td class="joinTD"> 
					<div id="pwdLayer">
						
					 </div>		
				</td>
			</tr>
				
			<tr>
			<th class="joinTH">비밀번호 확인</th>
				<td class="joinTD">
				 	
				</td>	
			</tr>
			
			<tr>	
			<th class="joinTH">이름</th>
				<td class="joinTD">
				 	<input type="text" id="name" name="name"/>
				</td>	
			</tr>
			<tr>	
				<th class="joinTH" style="height: 106px; padding-top: 40px;">주소</th>
				<td class="joinTD">
				 	<input type="text" name="post" id="sample6_postcode" placeholder="&nbsp;우편번호">
				 	 
					<input type="text" name="addr1" id="sample6_address" placeholder="&nbsp;주소" style="margin: 5px 0px 5px 0px"><br>
					<input type="text" name="addr2" id="sample6_detailAddress" placeholder="&nbsp;상세주소">
					<input type="text" name="addr3" id="sample6_extraAddress" placeholder="&nbsp;참고항목">
			
				</td>	
			</tr>
				
			<tr>
				<th class="joinTH">일반전화</th>
				<td class="joinTD">
					<select name="Gephone_1" id = "Gephone_1" class="myselect">  <!-- select 태그: 블라인드열어서 카테고리보기 -->
								<option value="02">02</option>
								<option value="031">031</option>
								<option value="032">032</option>
								<option value="033">033</option>
					</select>-
					<input type="text" name="Gephone_2" maxlength="4" style="width: 70px"/>-
					<input type="text" name="Gephone_3" maxlength="4" style="width: 70px"/>				 	

				</td>
			</tr>	
			
			<tr>	
			<th class="joinTH">휴대전화</th>
				<td class="joinTD">
				 	<select name="phone_1" id = "phone_1" class="myselect">  <!-- select 태그: 블라인드열어서 카테고리보기 -->
								<option value="010">010</option>
								<option value="011" >011</option>
								<option value="016" >016</option>
								<option value="017" >017</option>
					</select>-
					<input type="text" id="hp2" name="phone_2" maxlength="4" style="width: 70px" class="inputHP"/>-
					<input type="text" id="hp3" name="phone_3" maxlength="4" style="width: 70px" class="inputHP"/>
				</td>	
			</tr>
			
			<tr>	
				<th class="joinTH" style="border-bottom: solid 1px #dfdfdf;">이메일</th>
				<td class="joinTD" style="border-bottom: solid 1px #dfdfdf;">
				 	<input type="text" name="email" id="email"/><span class="error email_error">&nbsp;올바른 형식의 이메일을 입력하세요.</span>
				</td>
			</tr>	
		</table>
 	
 			
	<div id="Join3">
	  <span style="display: block; font-weight: bold; font-size: 12pt; margin:30px 0px 20px 0px;">추가정보</span>	
		<table style="display: block; width: 1000px;">	
			<th class="joinTH">성별</th>
			<td class="joinTD" style="height: 43px;">
				<input id="Join3_type1" type="radio" name="gender"  value="1" /><label for="Join3_type1" style="font-weight: lighter;">&nbsp;남자</label>
				<input id="Join3_type2" type="radio" name="gender"  value="2" /><label for="Join3_type2" style="font-weight: lighter;">&nbsp;여자</label>
			</td>
			<th class="joinTH" style="border-bottom: solid 1px #dfdfdf;">생년월일</th>
			<td class="joinTD" style="height: 43px; border-bottom: solid 1px #dfdfdf;">
				<input name="birthdayyy" id="birthdayyy" type="text" maxlength="4" style="width: 70px" class="inputBirth"/>&nbsp;년&nbsp;
				<input name="birthdaymm" id="birthdaymm" type="text" maxlength="2" style="width: 50px" class="inputBirth"/>&nbsp;월&nbsp;
				<input name="birthdaydd" id="birthdaydd" type="text" maxlength="2" style="width: 50px" class="inputBirth"/>&nbsp;일&nbsp;
				<!-- 
				<label for="Join3_type3" style="font-weight: lighter;"><input id="Join3_type3" type="radio" name="birth"/>&nbsp;양력</label>
				<label for="Join3_type4" style="font-weight: lighter;"><input id="Join3_type4" type="radio" name="birth"/>&nbsp;음력</label>
			     -->
			</td>
		</table>	
	</div>
								
	
	
		     
	<div id="layer" style="display: none; z-index: 9999;">
		 <div style="padding: 5px 0; font-weight: bold;">
		 	※   비밀번호 입력조건
			<a class="close" onclick="myClose();" tabindex="-1" style="position: relative; top: -5px;">
				<img src="//img.echosting.cafe24.com/skin/base/common/btn_close_tip.gif"/>
			</a>   
		 </div>           
	                  
		 <div>
		 - 대소문자/숫자/특수문자 조합, 8~16자<br/>  
		 - 입력가능 특수문자 <br/>        
		    &nbsp; &nbsp; ~ ' ! @ # $ ^ () _ - = {} [] | ; : < >, . ? /<br/>
		 - 공백 입력 불가능   <br/>
		 </div>
	</div>    
	
	
</div>
</div>
</form>