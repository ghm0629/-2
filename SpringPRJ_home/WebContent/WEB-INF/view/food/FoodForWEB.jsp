<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="poly.util.CmmUtil"%>
    
<%
	// Controller로부터 전달받은 데이터
	String res = CmmUtil.nvl((String)request.getAttribute("res"), "0");
	String firstDay = CmmUtil.nvl((String)request.getAttribute("firstDay"), "");
	String lastDay = CmmUtil.nvl((String)request.getAttribute("lastDay"), "");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/img/favicon.ico" type="image/x-icon">
<meta charset="EUC-KR">
<title>식단 정보 수집</title>
</head>
<body>
서울강서캠퍼스 식단 홈페이지에서 <%=res %>개의 <%=firstDay %>부터 <%=lastDay %>까지의 식단 정보가 수집되었습니다.
</body>
</html>