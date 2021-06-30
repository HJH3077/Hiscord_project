<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원정보 관리</title>
<style type="text/css">
@import
	"//netdna.bootstrapcdn.com/font-awesome/3.0/css/font-awesome.css";

body {
	padding: 0;
	margin: 0;
}

#user_info {
	width: 1500px;
	height: 100vh;
	margin-left: 50px;
	background-color: #fff;
}

#user_head {
	display: flex;
	align-items: center;
	border-bottom: 1px solid #f1f3f5;
}

#user_logo {
	text-align: center;
	width: 100%;
	color: black;
	font-weight: bold;
	font-size: 45px;
}

#searchbar {
	height: 100px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

#search::-webkit-input-placeholder {
	font-family: FontAwesome;
	font-weight: normal;
	overflow: visible;
	vertical-align: top;
	display: inline-block !important;
	padding-left: 5px;
	padding-top: 2px;
	color: hsl(9, 40%, 60%);
}

#searchbar #search {
	margin-left: 20px;
	height: 35px;
	width: 500px;
	border-radius: 7px;
	font-family: 'fontAwesome';
}

#user_title {
	color: white;
}

table {
	border-collapse: collapse;
	text-align: center;
	width: 1100px;
}

table, tr, td, th {
	padding: 2px;
	margin: auto;
	font-size: 18px;
	border: 1px solid black;
}

tr {
	font-size: 20px;
	line-height: 2.5;
}

/* 페이징 */
#paging {
	margin: 45px auto;
	font-size: 25px;
	width: 1100px;
	text-align: center;
}

#page a{
	color: #000080;
	margin-left: 25px;
}

#page img{
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
<script type="text/javascript">
	function delete_go() {
		location.href = "";
	}

	function chk_all() {
		if (chk_form.chkall.checked == true) {
			for (i = 0; i < chk_form.chk.length; i++) {
				chk_form.chk[i].checked = true;
			}
		} else {
			for (i = 0; i < chk_form.chk.length; i++) {
				chk_form.chk[i].checked = false;
			}
		}
	}
</script>
</head>
<body>
	<%@ include file="login_head.jsp"%>
	<div id="user_info">
		<div id="user_head">
			<h1 id="user_logo">회원정보관리</h1>
		</div>
		<div id="searchbar">
			<input id="search" type="search" name="input" placeholder="&#61442;">
		</div>
		<div id="user">
			<div>
				<form method="post" name="chk_form">
					<table>
						<thead style="background-color: #9370DB">
							<tr id="user_title">
								<th style="width: 5%"><input type="checkbox" name="chkall"
									onclick="chk_all()"></th>
								<th style="width: 20%">아이디</th>
								<th style="width: 20%">이름</th>
								<th style="width: 25%">닉네임</th>
								<th style="width: 30%">가입날짜</th>
							</tr>
						</thead>
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
								<th><input type="checkbox" name="chk" value=""></th>
								<th>kim</th>
								<th>김씨</th>
								<th>김부각</th>
								<th>2021.06.25</th>
							</tr>
							<tr>
								<th><input type="checkbox" name="chk" value=""></th>
								<th>hong</th>
								<th>홍씨</th>
								<th>홍시</th>
								<th>2021.06.28</th>
							</tr>
							<tr>
								<th><input type="checkbox" name="chk" value=""></th>
								<th>bak</th>
								<th>박씨</th>
								<th>수박</th>
								<th>2021.06.14</th>
							</tr>
						</tbody>
					</table>
				</form>
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
				<button onclick="delete_go()">삭제하기</button>
			</div>
		</div>
	</div>
</body>
</html>