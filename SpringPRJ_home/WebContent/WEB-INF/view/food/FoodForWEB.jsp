<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="poly.util.CmmUtil"%>
    
<%
	// Controller�κ��� ���޹��� ������
	String res = CmmUtil.nvl((String)request.getAttribute("res"), "0");
	String firstDay = CmmUtil.nvl((String)request.getAttribute("firstDay"), "");
	String lastDay = CmmUtil.nvl((String)request.getAttribute("lastDay"), "");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/img/favicon.ico" type="image/x-icon">
<meta charset="EUC-KR">
<title>�Ĵ� ���� ����</title>
</head>
<body>
���ﰭ��ķ�۽� �Ĵ� Ȩ���������� <%=res %>���� <%=firstDay %>���� <%=lastDay %>������ �Ĵ� ������ �����Ǿ����ϴ�.
</body>
</html>