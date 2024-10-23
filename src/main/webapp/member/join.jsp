<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/join.css?after"/>
</head>

<body>

	<div id="bclr">
		<div id="box">
			
			
			<form action="join.do" method="post" name="frm">
			<h2 align="center" style="font-size:40px;font-weight:bold;color:white;">SIGN UP</h2>
			<br><br>
			<p style="color:white; font-weight:bold;font-size:15px">아이디 중복 체크 필수</p>
				<div id="dbCheck">
					<input type="button" value="중복 체크" onclick="idCheck()">
				</div>

				<div class= iptBox>
				
					<input type="text" name="username" placeholder="NAME" size="20"	class="ipt">
					
					<input type="text" name="userid"placeholder="USERID" size="20" id="userid" class="ipt">
					
					<input type="hidden" name="reid" size="20">
					 
					<input type="password" name="pwd" placeholder="PASSWORD" size="20" class="ipt">
					
					<input type="password" name="pwd_check" placeholder="PWDCHECK" size="20" class="ipt">
					 
					<input type="text" name="email" placeholder="EMAIL" size="20" class="ipt">
					
					<input type="text" name="phone" placeholder="PHON NUMBER" size="20" class="ipt">
					
				</div>
				<div class = "pdUs">
					<input type="radio" name="admin" value="0" checked="checked"> 이용자 
					<input type="radio" name="admin" value="1"> 관리자
				</div>
				
				<div class = "btn">
					<input type="submit" value="SIGN UP" onclick="return joinCheck()">
					<a href="javascript:history.go(-1);"><input type="button" value="BACK"></a> 
					${message }
				</div>
			</form>
		</div>
			<div class="logoBox">
        		<a href="index.jsp"><img src="img/borovone_logo1.png"></a>
        	</div>
	</div>
	<script type="text/javascript" src="js/login.js"></script>
	
</body>

</html>