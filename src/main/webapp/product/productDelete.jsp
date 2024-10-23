<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>우리동네 온라인서점, 바로보네</title>
<link rel="stylesheet" type="text/css" href="css/shopping.css">
<script src="https://code.jquery.com/jquery-3.4.0.js"></script>
</head>

<body>


	<div id="bclr">
		<div id="wrap" align="center">
			<h1>상품 삭제 - 관리자 페이지</h1>
			<form action="productDelete.do" method="post">
				<table class="list">
					<tr>
						<td style="width:30%;">
							<c:choose>
								<c:when test="${empty product.pictureUrl}">
									<img src="upload/noimage.gif">
								</c:when>
								<c:otherwise>
									<img src="upload/${product.pictureUrl}">
								</c:otherwise>
							</c:choose>
						</td>
						<td style = "width:65%">
							<table class="list" style="width:100%">
								<tr>
									<th style="width: 80px">상 품 명</th>
									<td>${product.productName}</td>
								</tr>
								<tr>
									<th>가 격</th>
									<td>${product.price}원</td>
								</tr>
								<tr>
									<th>설 명</th>
									<td><div style="height: 220px; width: 100%">${product.description}</div></td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<br> <input type="hidden" name="code" value="${product.code}">
				<input type="submit" value="삭제"> <input type="button"
					value="목록" onclick="location.href='productList.do'">
			</form>
		</div>
	</div>
</body>

</html>