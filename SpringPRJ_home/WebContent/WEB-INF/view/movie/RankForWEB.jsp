<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="poly.util.CmmUtil"%>
    
<%
	// Controller�κ��� ���޹��� ������
	String res = CmmUtil.nvl((String)request.getAttribute("res"), "0");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/img/favicon.ico" type="image/x-icon">
<meta charset="EUC-KR">
<title>CGV ��ȭ ���� ���</title>
</head>
<body>
CGV ��ȭ Ȩ���������� <%=res %>���� ��ȭ ���� ������ �����Ǿ����ϴ�.
</body>
</html>