<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>친구창</title>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
}

#friend {
	width: 1300px;
	height: 100vh;
	margin-left: 50px;
	background-color: #fff;
}

#f_nav {
	box-sizing: border-box;
	background-color: #fff;
	margin: auto;
	width: 1250px;
	padding: 20px;
	display: flex;
	justify-content: center;
}

#f_nav .friend_mng a:visited, a:link {
	color: white;
}

#f_nav .friend_mng {
	border: 1px solid black;
	text-align: center;
	width: 650px;
	background-color: #9370DB;
	line-height: 1.5;
}

#friend_head {
	box-sizing: border-box;
	margin-top: 30px;
	display: flex;
}

#friend_add {
	width: 100px;
	height: 30px;
	margin: auto 0 auto 75%;
	background-color: pink;
}

table {
	text-align: center;
	width: 1200px;
	font-size: 18px;
	margin: auto;
}

th img {
	width: 50px;
	height: 50px;
	border-radius: 25px;
}

tr{
	font-size: 20px;
	line-height: 2.5;
}

/* 페이징 */
#paging {
	margin: 45px auto;
	font-size: 25px;
	width: 1200px;
	text-align: center;
}

#page a {
	color: #000080;
	margin-left: 25px;
}

#page img {
	width: 30px;
	height: 20px;
}

#paging button {
	height: 41px;
	width: 80px;
	float: right;
	background-color: #9370DB;
	color: white;
	font-size: 15px;
	border-radius: 0.5em;
}
</style>
</head>
<body>
	<%@ include file="login_head.jsp"%>
	<div id="friend">
		<div id="friend_head">
			<div id="f_nav">
				<div class="friend_mng">
					<a href="friend.jsp">친구</a>
				</div>
				<div class="friend_mng">
					<a href="user_mng.jsp">대기중</a>
				</div>
			</div>
		</div>
		<div id="friend_UI">
			<div>
				<form method="post">
					<table>
						<tbody>
							<%-- 
								<c:choose>
									<c:when test="${empty list}">
										<tr>
											<td colspan="4"><h2>정보가 존재하지 않습니다.</h2></td>
										</tr>
									</c:when>
									<c:otherwise>
										<c:forEach var="k" items="${list}">
											<tr>
												<td><input type="checkbox"></td>
												<td>${k.name }</td>
												<td><a href="/MyController?cmd=onelist&idx=${k.idx}">${k.title}</a></td>
												<td>${k.reg.substring(0,10)}</td>
											</tr>
										</c:forEach>
									</c:otherwise>
								</c:choose> 
								--%>
							<tr>
								<th style="width: 5%"><img alt="로고"
									src="../images/discord.png"></th>
								<th style="width: 85%; padding-left: 15px;" align="left">김씨</th>
								<th style="width: 5%"><img alt="대화하기"
									src="../images/msg.png"></th>
								<th style="width: 5%"><img alt="삭제하기" src="../images/x.png"></th>
							</tr>
							<tr>
								<th><img alt="로고" src="../images/discord.png"></th>
								<th align="left" style="padding-left: 15px;">홍씨</th>
								<th><img alt="대화하기" src="../images/msg.png"></th>
								<th><img alt="삭제하기" src="../images/x.png"></th>
							</tr>
							<tr>
								<th><img alt="로고" src="../images/discord.png"></th>
								<th align="left" style="padding-left: 15px;">박씨</th>
								<th><img alt="대화하기" src="../images/msg.png"></th>
								<th><img alt="삭제하기" src="../images/x.png"></th>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
		<div id="paging">
			<div id="page">
				<c:choose>
					<c:when test="false">
						<a><img alt="왼쪽" src="../images/previous.png"></a>
					</c:when>
					<c:otherwise>
						<a href="#"><img alt="왼쪽" src="../images/previous.png"></a>
					</c:otherwise>
				</c:choose>
				<c:forEach begin="1" end="3" step="1" var="k">
					<c:choose>
						<c:when test="false">
							<a>${k}</a>
						</c:when>
						<c:otherwise>
							<a href="#">${k}</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<!-- 다음 블록 -->
				<c:choose>
					<c:when test="false">
						<a><img alt="오른쪽" src="../images/next.png"></a>
					</c:when>
					<c:otherwise>
						<a href="#""><img alt="오른쪽" src="../images/next.png"></a>
					</c:otherwise>
				</c:choose>
			</div>
			<button onclick="friend_add()">친구추가</button>
		</div>
	</div>
</body>
</html>