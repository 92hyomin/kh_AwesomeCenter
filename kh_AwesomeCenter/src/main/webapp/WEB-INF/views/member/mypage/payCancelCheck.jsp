<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String ctxPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

</style>

<script type="text/javascript">

	function goSubmit() {
		var frm = document.cancelFrm;
		frm.method = "POST";
		frm.action = "<%= ctxPath%>/member/payCancelEnd.to";
		frm.submit();
	}

	function goCancel() {
		self.close();
	}

</script>

</head>
<body>

	<form name="cancelFrm">
		<input type="hidden" value="${no }" name="no"/>
		<input type="password" name="pw" id="pw" />
		<button type="button" onclick="goSubmit();">확인</button>
		<button type="button" onclick="goCancel();">취소</button>
	</form>

</body>
</html>