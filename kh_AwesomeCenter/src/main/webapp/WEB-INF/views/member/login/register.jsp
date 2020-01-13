<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String ctxPath = request.getContextPath();
%>
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/register.css" />
<script>
$(document).ready(function(){
	$(".col-md").hover(function(){
		$(this).children().addClass("__blacktxt");
	},function(){
		$(this).children().removeClass("__blacktxt");
	});
	
	$("input").focus(function(){
		$(this).addClass("inputActive");
	});
	
	$("input").blur(function(){
		$(this).removeClass("inputActive");
	});
});
</script>
<div class="section __half register" id="register">
				<h3 class="subject __underline">
					회원가입
				</h3>

				<!-- 이름 -->
				<div class="row" id="div-cstNm">
					<div class="col-md">
						<label>이름</label><!-- 이름 -->
					</div>
					<div class="col-md">
						<div class="form-wrap">
							<div class="ui-input active">
								<input type="text" id="userName" value="">
							</div>
						</div>
					</div>
				</div>

				<!-- 아이디 -->
				<div class="row" id="div-onlId">
					<div class="col-md">
						<label>아이디</label> <!-- 아이디 -->
					</div>
					<div class="col-md">
						<div class="form-wrap">
							<div class="ui-input active">
								<input type="text" id="userid" value="">
							</div>
							<button type="button" class="ui-button __square-small __black" onclick="">중복확인</button>
						</div>
					</div>
				</div>

				<!-- 비밀번호 -->
				<div class="row">
					<div class="col-md">
						<label>비밀번호</label>
					</div>
					<div class="col-md">
						<div class="form-wrap __normal">
							<div class="inner">
								<div class="ui-input active">
									<input class="inputPwd" type="password" id="userpwd" maxlength="20" onblur="" placeholder="비밀번호를 입력해주세요.">
								</div>
							</div>
							<span class="__point-color"><small>8-15자리의 영문/숫자/특수문자를 함께 입력해주세요.</small></span>
							<div class="inner">
								<div class="ui-input active inputPwdDiv">
									<input class="inputPwd" type="password" id="userpwdCheck" maxlength="20" onblur="" placeholder="입력하신 비밀번호를 다시 한번 입력해주세요.">
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 비밀번호 -->

				<div class="row">
					<div class="col-md">
						<label>주민번호</label>
					</div>
					<div class="col-md">
						<div class="form-wrap">
							<div class="ui-input active">
								<input type="text" maxlength="6" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" class="ResidentNum" id="ResidentNum1" value="">
							</div>
							<span class="birthTxt">-</span>
							<div class="ui-input active">
								<input type="password" maxlength="7" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" class="ResidentNum" id="ResidentNum2" value="">
							</div>
						</div>
					</div>
				</div>
				
				<!-- 휴대폰 번호 -->
				<div class="row __depth" id="div-mblNo">
					<div class="col-md">
						<label>휴대폰 번호</label>  <!-- 휴대폰 번호 -->
					</div>
					<div class="col-md">
						<div class="form-wrap __mobile __telecom type1" id="celPhoneView" type="1">
							<div class="inner">
								<select title="통신사" id="celphone_no0" name="celphone_carrier" class="ui-select"><!-- 통신사 -->
									<option value="">선택<!-- 선택 --></option>
										<option value="1">SKT</option>
										<option value="2">KT</option>
										<option value="3">LGU+</option>
										<option value="4">SKT알뜰폰</option>
										<option value="5">KT알뜰폰</option>
										<option value="6">LGU+알뜰폰</option>
										<option value="9">ETC</option>
									 
								</select>
								<select title="통신사번호" id="celphone_no1" name="celphone_no1" class="ui-select">  <!-- 통신사번호 -->
									<option value="">선택<!-- 선택 --></option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
								</select>
								<div class="ui-input active">
									<input id="celphone_no2" name="celphone_no2" type="tel" maxlength="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" style="ime-mode:disabled;" title="휴대폰 번호 중간자리" value="">  <!-- 휴대폰 번호 중간자리 -->
								</div>
								<div class="ui-input active">
									<input id="celphone_no3" name="celphone_no3" type="tel" maxlength="4" onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" style="ime-mode:disabled;" title="휴대폰 번호 뒷자리" value=""> <!-- 휴대폰 번호 뒷자리 -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 휴대폰 번호 선택 -->

				<!-- 이메일  -->
				<div class="row __depth" id="div-elcAdd">
					<div class="col-md">
						<label>이메일 주소</label>  <!-- 이메일 주소 -->
					</div>
					<div class="col-md">
						<div class="form-wrap __normal type1" id="elcAddView" type="1">
							<div class="ui-input active">
								<input class="inputPwd" type="email" id="user-email" title="이메일주소를 입력해주세요." value="" placeholder="이메일주소를 입력해주세요.">
							</div>
						</div>
					</div>
				</div>
				
				<!-- 주소 -->
				<div class="row __depth" id="div-add">
					<div class="col-md">
						<label for="post-code-home">주소</label>  <!-- 주소 -->
					</div>
					<div class="col-md">
						<div class="form-wrap __choice __post">
							<!-- 자택 주소입력 -->
							<div class="postwrap type1" id="homeAddView" data-type="1">
								<div class="inner postcode">
									<button type="button" class="ui-button __square-small __black" name="postCall" onclick="fnPostcode_init(1);">
											우편번호
									</button> <!-- 우편번호 -->
	
									<div class="ui-input active">
										<input type="tel" id="h-post-code" title="우편번호" maxlength="6" value="" readonly="readonly"> <!-- 우편번호 -->
									</div>
								</div>
								<div class="inner">
									<div class="ui-input ui-inputemail active">
										<input type="text" id="h-post-address-1" placeholder="상세주소 1" value="" readonly="readonly">  <!-- 상세주소 1 -->
									</div>
								</div>
								<div class="inner">
									<div class="ui-input ui-inputemail active">
										<input type="text" id="h-post-address-2" placeholder="상세주소 2" value="" readonly="readonly">  <!-- 상세주소 2 -->
									</div>
								</div>
							</div>
							<!-- //자택 주소입력 -->
						</div>
					</div>
				</div>
				<!-- 주소선택 -->

				<!-- 마케팅 수신동의  -->
				<div class="row __depth" id="div-elcAdd">
					<div class="col-md">
						<label>마케팅 수신동의</label>
					</div>
					<div class="col-md marketingDiv">
						<div class="form-wrap __normal type1">
								<input type="checkbox" id="marketingEmail">
								<label for="marketingEmail" class="label marketingLabel">E-mail</label>
								<input type="checkbox" id="marketingSMS">
								<label for="marketingSMS" class="label marketingLabel">SMS</label>
						</div>
					</div>
				</div>

				<div class="description">
					<p>회원 탈퇴 시 개인 정보는 6개월간 보관 후 파기합니다.</p>
				</div>
				<div class="btns">
					<button type="button" class="ui-button __square-small __black" name="registerBtn" id="registerBtn" onclick="">
							회원가입
					</button>
					<button type="button" class="ui-button __square-small " name="cancleBtn" id="cancleBtn" onclick="">
							취소
					</button>
				</div>
			</div>