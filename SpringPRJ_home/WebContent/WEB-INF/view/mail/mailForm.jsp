<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>
<style type="text/css">
    h1 {
        font-size: 1.5em;
        background-color: aqua;
    }
    label {
        font-size: 1.0em;
    }
    
</style>
</head>
<body>
<div style="font-size: 0.75em;">
	<h1 style="font-size: 1.5em ">���� ������</h1>
</div>
<div>
<form action="/mail/sendMail.do" method="post" style="border: 1px solid; border-width: 3px;">

<label>�޴»�� : </label><input type="email" name="toMail"  /><br>
<label>�������� : </label><input type="text" name="title" /><br>
<label style="position: relative; bottom: 140px;">���ϳ��� : </label><textarea name="contents" cols="30" rows="10" placeholder="�����Դϴ�."></textarea>
<br>
<input type="submit" value="[��������]" />
<input type="reset" value="[���� �ʱ�ȭ]" /> 
</form>
</div>
</body>
</html>