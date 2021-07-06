<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>금지어 관리</title>
<style type="text/css">
@import
	"//netdna.bootstrapcdn.com/font-awesome/3.0/css/font-awesome.css";
	
body {
	padding: 0;
	margin: 0;
}
#ban_info {
	width: 1500px;
	height: 100vh;
	margin-left: 50px;
	background-color: #fff;
}
#admin_head {
	border-bottom: 1px solid #f1f3f5;
	box-sizing: border-box;
}
#admin_logo {
	text-align: center;
	width: 100%;
	color: black;
	font-weight: bold;
	font-size: 45px;
	padding: 10px;
	margin: auto;
}
#nav {
	box-sizing: border-box;
	background-color: #fff;
	width: 1300px;
	padding: 20px;
	display: flex;
	justify-content: center;
}
.nav_bar a:visited, a:disabled {
	color: white;
}
#nav .nav_bar {
	border: 1px solid black;
	text-align: center;
	width: 650px;
	background-color: #9370DB;
	line-height: 1.5;
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
#ban_title {
	color: white;
}
table {
	border-collapse: collapse;
	text-align: center;
	width: 1300px;
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
	width: 1300px;
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
	<div id="ban_info">
		<div id="admin_head">
			<h1 id="admin_logo">금지어관리</h1>
			<div id="nav">
				<div class="nav_bar">
					<a href="prohibited_word.jsp">금지어 관리</a>
				</div>
				<div class="nav_bar">
					<a href="user_mng.jsp">회원정보 관리</a>
				</div>
			</div>
		</div>
		<div id="searchbar">
			<input id="search" type="search" name="input" placeholder="&#61442;">
		</div>
		<div id="ban">
			<div>
				<form method="post" name="chk_form">
					<table>
						<thead style="background-color: #9370DB">
							<tr id="ban_title">
								<th style="width: 5%"><input type="checkbox" name="chkall"
									onclick="chk_all()"></th>
								<th colspan="9">금지어</th>
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
								<td style="width: 5%"><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
								<td style="width: 5%"><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
								<td style="width: 5%"><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
								<td style="width: 5%"><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
								<td style="width: 5%"><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
								<td><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
								<td><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
								<td><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
								<td><input type="checkbox" name="chk" value=""></td>
								<td>kim</td>
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