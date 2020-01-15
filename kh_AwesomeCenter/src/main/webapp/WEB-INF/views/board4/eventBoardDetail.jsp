<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<style type="text/css">
	
	@import url(//fonts.googleapis.com/earlyaccess/nanumgothic.css);
    @import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
	
	 #board_body {
      font-family: "Noto Sans Kr", Nanum Gothic, "나눔고딕", sans-serif;
   }

   #board_div {
      width : 85%;
      margin : 0 auto;
   }
   
   #board_nvar div {
      display: inline-block;
      font-size: 14px;
      margin: 2px 12px 0;
      color : #666;
      font-weight: 400;
   }

   #board_h2 h2 {
      font-weight: 500;
      font-size: 52px;
      margin-bottom: 70px;
      letter-spacing: -3px;
      font-family: "Noto Sans Kr";
   }
   
	.boardTbl {
		margin: 0 auto;
		margin-top: 70px;
	    padding: 0;
	    border-top: solid 1.5px black;
	    width: 75%;
	    font-family: 'Nanum Gothic', '나눔고딕', '돋움', Dotum, sans-serif;
	    font-size: 12px;
	    line-height: normal;
	    vertical-align: baseline;
	}
	
	.boardTbl tr th {
	    width: 120px;
	    padding: 10px 0 10px 30px;
	    border-bottom: 1px solid #d7d7d7;
	    color: #181818;
	    font-weight: normal;
	    text-align: left;
	    vertical-align: middle;
	}
	
	.boardTbl tr td {
	    padding: 10px 0 10px 10px;
	    border-bottom: 1px solid #d7d7d7;
	    color: #837d81;
	    text-align: left;
	    vertical-align: middle;
	}
	
	#boardTbl_cat {	
	    display: inline-block;
	    font-size: 16px;
	    color: #222;
	    font-weight: 400;
	    vertical-align: middle;
	    padding-right: 15px;
	    margin-top: -1px;
	}
	
	#boardTbl_title {
		font-size: 28px;
	    color: #222;
	    font-weight: bold;
	    vertical-align: middle;
	}
	
	#boardTbl_date {
		color:#999999;
		font-size: 12pt;
		font-weight: bold;
	}
	
	.board_contents {
		margin: 0px auto;
		min-height: 500px;
		width: 75%;
		border-bottom: 1px solid #d7d7d7; 
	}
	
	#content {
		float: left;
		width: 70%;
		margin: 30px 40px;
	}
	
	.btn_cover {
		margin: 20px auto;
		width: 75%;
		text-align: right;
	}
	
	.btn {
	    display: inline-block;
	    width: 140px;
	    height: 80px;
	    margin: 10px;
	    padding: 23px 0 35px 0;
	    border: 1px solid #aaa;
	    color: black;
	    font-size: 28px;
	    font-weight: bold;
	    text-align: center;
	    cursor: pointer;
	}

</style>	

<div id="board_body" >
	
	 <div id = "board_nvar" align="right" style = "margin: 40px 220px;">
         <div><i class = "fa fa-home"></i></div>
         <div style = "border-right: 1px solid #e5e5e5; border-left: 1px solid #e5e5e5; padding : 0 12px; margin : 0;">게시판</div>
         <div>이벤트 게시판</div>
      </div>
      <div align="center" id = "board_h2">
         <h2>이벤트</h2>
      </div>
	
	
	<table class="boardTbl">
		<tr>
			<th style="height: 100px; width: 110px;">
				<span id="boardTbl_cat">이벤트&nbsp;&nbsp;<span style="color:#e5e5e5;">|</span></span>
								<%-- 카테고리 분류 --%>
			</th>
			<td>
				<span id="boardTbl_title">제목제목</span>
			</td>
			<td style="width: 150px;">
				<span id="boardTbl_date">2020-01-14</span>
			</td>
		</tr>
		
	</table>
		
	<div class="board_contents">
		<div id="content">
			sdfdfsfd
		dfsdfsf
		</div>
	</div>
	
	<div class="btn_cover" style="margin-bottom: 70px;">
		<a href="javascript:history.back();"><span class="btn">목록</span></a>
	</div>
		
</div>
