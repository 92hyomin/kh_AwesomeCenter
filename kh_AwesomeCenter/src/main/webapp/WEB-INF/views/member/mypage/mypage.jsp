<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String ctxPath = request.getContextPath();
%>

<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="<%= ctxPath %>/resources/css/mypage.css" />
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

<script type="text/javascript" src="<%= ctxPath%>/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	
	$(function(){
		
		$("#modal-btn_kdh").click(function(){
			$("#modal_kdh").css('display','block');
		});
		
		
		
		$(".checkCategory").click(function(){
			var checkCategorylength = $(".on").length;
				
				if(checkCategorylength < 3){
					$(this).toggleClass('on');
					checkCategorylength = $(".on").length;
				} else {
					alert("관심분야는 3개까지 선택 가능합니다.");
					$(".checkCategory").removeClass("on");
				}
			
		}); 
		
		$("#cancel_kdh").click(function(){
			$("#modal_kdh").css('display','none');
		});
		
		$(".btnClose_kdh").click(function(){
			$("#modal_kdh").css('display','none');
		});
		
		
	});

	
</script>

	<div id="container_kdh">
		<div id="content_kdh">
		
			<div class="menu_kdh">
				<a href="#" class="material-icons atag">home</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">My문화센터</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">마이페이지</a>
				<a href="<%= ctxPath%>/member/mypage.to" class="atag">회원정보변경</a>
			</div>
			
			<div class="main_kdh memberModify_kdh">
				<h2 class="name_kdh h2"><span>강동하님.</span></h2>
				<p class="changeDay_kdh">최근수정일자 : 2020.01.03</p>
				
				<!-- myInfoArea :s -->
				<div class="myInfo_kdh">
					<div class="leftArea_kdh">
						<dl>
							<dt class="myInterest_kdh"><span>나의 관심분야</span></dt>
							<dd><ul class="myInterestList_kdh olulli" id="interestCategoryList_kdh" style="list-style-type: disc;">
								<li>라이프스타일</li>
								<li>음악·악기</li>
							</ul></dd>
						</dl>
						<div class="btnArea_kdh aRight_kdh">
						<a href="#" class="btn_kdh btnBlack_kdh atag" id="modal-btn_kdh"><span>관심분야 수정</span></a>
						</div>
					</div>
					<div class="rightArea_kdh">
						<ul class="myMenu_kdh olulli">
							<li class="item01_kdh olulli">
								<a href="#" class="atag"><span class="txt_kdh">장바구니</span><span class="num_kdh">0</span></a>
							</li>
							<li class="item02_kdh olulli">
								<a href="<%= ctxPath%>/member/lectureList.to" class="atag"><span class="txt_kdh">수강내역</span><span class="num_kdh">0</span></a>
							</li>
							<li class="item03_kdh olulli">
								<a href="<%= ctxPath%>/member/waitingList.to" class="atag"><span class="txt_kdh">대기자조회</span><span class="num_kdh">0</span></a>
							</li>
							<li class="item04_kdh olulli">
								<a href="<%= ctxPath%>/member/review.to" class="atag"><span class="txt_kdh">수강후기</span><span class="num_kdh">0</span></a>
							</li>
							<li class="item05_kdh olulli">
								<a href="<%= ctxPath%>/QnA/QnAList.to" class="atag"><span class="txt_kdh">Q&A</span><span class="num_kdh">-</span></a>
							</li>
						</ul>
					</div>
				</div>
				<!-- myInfoArea :e -->
				
				<div id="modal_kdh" class="modal_kdh">
					<div id="modal-area_kdh">
						<div id="modal-content_kdh">
							<div class="main_kdh">
								<p class="popTit_kdh mb20_kdh">나의 관심분야</p>
								<p class="toptxt_kdh">관심분야는 <em>3개까지 선택 가능</em>합니다.</p>
								<div class="interestCategory_kdh">
									<div class="checkArea_kdh">
										<div class="checkRow_kdh">
											<a href="#" id="lifeStyle" class="checkCategory">라이프스타일</a>
											<a href="#" id="health" class="checkCategory">건강·뷰티</a>
											<a href="#" id="flower" class="checkCategory">공예·플라워</a>
											<a href="#" id="language" class="checkCategory">어학·인문</a>
											<a href="#" id="music" class="checkCategory">음악·악기</a>
										</div>
										<div class="checkRow_kdh">
											<a href="#" id="art" class="checkCategory">미술·서예</a>
											<a href="#" id="cooking" class="checkCategory">쿠킹·레시피</a>
											<a href="#" id="freemom" class="checkCategory">육아·프리맘</a>
											<a href="#" id="sing" class="checkCategory">노래·댄스</a>
											<a href="#" id="culture" class="checkCategory">교양·재테크</a>
										</div>
									</div>
								</div>
								<div class="btnArea_kdh">
									<a href="#" id="cancel_kdh" class="btn_kdh btnType03_kdh btnWhite_kdh" style="color:black; border-radius: 10px;"><span>취소</span></a>
									<a href="#" id="save_kdh" class="btn_kdh btnType03_kdh btnRed_kdh" style="border-radius: 10px;"><span>저장</span></a>
								</div>
							</div>
						</div>
						<a href="#" class="btnClose_kdh"></a>
					</div>
				</div>
				
				
				<!-- 회원정보 :s -->
				<h3 class="subtitle_kdh">회원정보</h3>
				<div class="infoTable_kdh aLeft_kdh mb15_kdh">
					<table class="table">
						<tbody>
							<tr>
							<th scope="row">성명</th>
							<td>강동하</td>
							<th scope="row">생년월일</th>
							<td>1995.08.03</td>
							</tr>
							<tr>
							<th scope="row">휴대전화</th>
							<td>010-4816-5174</td>
							<th scope="row">E-mail</th>
							<td>dev_kang@kakao.com</td>
							</tr>
							<tr>
							<th scope="row">주소</th>
							<td colspan="3">서울시 송파구 성내천로 33다길 18</td>
							</tr>
							<tr>
							<th scope="row">마케팅 수신동의</th>
							<td>
								<span class="check_kdh">
									<input type="checkbox" id="dEmail_kdh" class="input" disabled>
									<label for="dEmail_kdh" class="label">E-mail</label>
								</span>
								<span class="check_kdh">
									<input type="checkbox" id="dSms_kdh" class="input" disabled checked>
									<label for="dSms_kdh" class="label">SMS</label>
								</span>
							</td>
							<td colspan="2"></td>
							</tr>
						</tbody>
					</table>
				</div>
				
				<div class="btnArea_kdh aRight_kdh">
					<a href="#" id="memberEdit_kdh" class="btn_kdh btnBlue_kdh atag"><span>회원정보 확인 및 수정</span></a>
					<a href="#" id="changePassword_kdh" class="btn_kdh btnBlue_kdh atag"><span>비밀번호 변경</span></a>
				</div>
				<!-- 회원정보 :e -->
				
				<!-- 강좌정보 수신동의 :s -->
				<h3 class="subtitle_kdh">마케팅 수신동의 (강좌정보등)</h3>
				<div class="receiveCheckArea_kdh">
					<div>
						<span class="check_kdh">
							<input type="checkbox" id="email_kdh" class="input">
							<label for="email_kdh" class="label">E-mail</label>
						</span>
						<span class="check_kdh">
							<input type="checkbox" id="sms_kdh" class="input">
							<label for="sms_kdh" class="label">SMS</label>
						</span>
					</div>
					
					<p class="txt_kdh p" style="color:black;">문화센터 강좌수강 및 학습활동과 관련된 정보 및 소식을 받아보실 수 있습니다.</p>
					
					<a href="#" id="editSave" class="btn_kdh btnBlack_kdh atag"><span>저장</span></a>
					<div class="btnArea_kdh aRight_kdh">
						<p class="inTxt_kdh p" style="color:black">
							<span id="changeDate_kdh">수신동의 변경일자: 2020.01.03</span>
						</p>
					</div>
					
				</div>
				<!-- 강좌정보 수신동의 :e -->
				
				<!-- 가족회원 정보 :s -->
				<h3 class="subtitle_kdh">가족회원 정보</h3>
				<div class="infoTable_kdh">
					<table class="table">
							<thead>
								<tr>
									<th scope="col">성명</th>
									<th scope="col">관계</th>
									<th scope="col">생년월일</th>
									<th scope="col">성별</th>
									<th scope="col">
										<a href="#" id="mypageFamilyAdd_kdh" class="btn_kdh btnBlack_kdh atag">
											<span>추가</span>
										</a> 
									</th>
								</tr>
							</thead>
							
							<tbody id="mypageFamilyList_kdh">
								<tr dupcheck="강동하_19950803_남성">
									<td>강동하</td>
									<td>본인</td>
									<td>1995.08.03</td>
									<td>남성</td>
									<td>&nbsp;</td>
								</tr>
							</tbody>
					</table>
				</div>
				<!-- 가족회원 정보 :e -->
				
				<div class="mt20 btnArea_kdh aRight_kdh">
					<a href="#" id="memberDrop_kdh" class="btnDropOut_kdh atag">문화센터 탈퇴하기</a>
				</div>
				
			</div>
		</div>
	</div>
