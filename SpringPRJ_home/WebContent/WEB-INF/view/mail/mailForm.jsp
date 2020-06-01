<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>메일전송폼</title>
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
	<h1 style="font-size: 1.5em ">메일 보내기</h1>
</div>
<div>
<form action="/mail/sendMail.do" method="post" style="border: 1px solid; border-width: 3px;">

<label>받는사람 : </label><input type="email" name="toMail"  /><br>
<label>메일제목 : </label><input type="text" name="title" /><br>
<label style="position: relative; bottom: 140px;">메일내용 : </label><textarea name="contents" cols="30" rows="10" placeholder="내용입니다."></textarea>
<br>
<input type="submit" value="[메일전송]" />
<input type="reset" value="[내용 초기화]" /> 
</form>
</div>
</body>
</html>