<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>
<script type="text/javascript" src="js/login.js"></script>
<link rel="stylesheet" type="text/css" href="css/join.css?after">

</head>

<body>
	<div id="bclr">
		<div id="box">
			<form action="memberUpdate.do" method="post" name="frm">
				<h2 align="center"
					style="font-size: 40px; font-weight: bold; color: white;">Modify
					Information</h2>
				<br>
				<br>
				<div class=iptBox>

					<input type="text" name="username" value="${mVo.username}"
						placeholder="NAME" size="20" class="ipt" readonly> <input
						type="text" name="userid" value="${mVo.userid }" placeholder="USERID" size="20"
						id="userid" class="ipt" readonly>  <input type="password" name="pwd"
						placeholder="PASSWORD" size="20" class="ipt"> <input
						type="password" name="pwd_check" placeholder="PWDCHECK" size="20"
						class="ipt"> <input type="text" name="email"
						value="${mVo.email}" placeholder="EMAIL" size="20" class="ipt">

					<input type="text" name="phone" placeholder="PHON NUMBER" size="20"
						value="${mVo.phone}" class="ipt">

				</div>
				<div class="pdUs">
					<c:choose>
						<c:when test="${mVo.admin==0}">
							<input type="radio" name="admin" value="0" checked="checked"> 일반회원
              				<input type="radio" name="admin" value="1"> 관리자
            			</c:when>
						<c:otherwise>
							<input type="radio" name="admin" value="0"> 일반회원
              				<input type="radio" name="admin" value="1" checked="checked"> 관리자
            			</c:otherwise>
					</c:choose>
				</div>
				<div class="btn">
					<input type="submit" value="Comfirm" onclick="return joinCheck()">
					<a href="javascript:history.go(-1);"><input type="button" value="Back"></a>
				</div>
			</form>
		</div>
		<div class="logoBox">
			<a href="index.jsp"><img src="img/borovone_logo1.png"></a>
		</div>
	</div>

</body>

</html>