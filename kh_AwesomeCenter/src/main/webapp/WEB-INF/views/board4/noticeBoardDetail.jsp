<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
    
     #btnArea {
    	margin: 30px 5px 70px 61px;
    }
    
    #noticeBoardDetailListBack{
    	text-decoration: none;
    	margin: 10px 20px 10px 20px; 
		text-decoration: none;
		outline: none; 
    }
    
    #noticeBoardDetailListBack:hover{
    	cursor: pointer;
    
    }

</style>	

<div id="board_body">
	
	 <div id = "board_nvar" align="right" style = "margin: 40px 220px;">
         <div><i class = "fa fa-home"></i></div>
         <div style = "border-right: 1px solid #e5e5e5; border-left: 1px solid #e5e5e5; padding : 0 12px; margin : 0;">게시판</div>
         <div>공지사항</div>
      </div>
      <div align="center" id = "board_h2">
         <h2>공지사항</h2>
      </div>
	
	
	<table class="boardTbl">
		<tr>
			<th style="height: 100px; width: 110px;">
				<span id="boardTbl_cat">공지사항&nbsp;<span style="color:#e5e5e5;">|</span></span>
								<%-- 카테고리 분류 --%>
			</th>
			<td>
				<span id="boardTbl_title">${boardvo.not_title}</span>
			</td>
			<td style="width: 150px;">
				<span id="boardTbl_date">${boardvo.not_regDate}</span>
			</td>
		</tr>
		
	</table>
		
	<div class="board_contents">
		<div id="content">
			${boardvo.not_content}
		</div>
	</div>
	
	<div id="btnArea">
      	<div style="text-align: center; border: solid 1px red;">
			<a href="javascript:history.back();"><button id="noticeBoardDetailListBack">목록</button> </a>
		</div>
    </div>
		
</div>
