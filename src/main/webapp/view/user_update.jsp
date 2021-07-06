<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원정보 수정</title>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
}

#update {
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

#nav .nav_bar a:visited, a:disabled {
	color: white;
}

#nav .nav_bar {
	border: 1px solid black;
	text-align: center;
	width: 650px;
	background-color: #9370DB;
	line-height: 1.5;
}

#update #update_logo {
	text-align: center;
	padding: 3px;
}

#update_info {
	border: 1px solid black;
	border-radius: 0.4em;
	margin: 50px auto;
	width: 800px;
}

table {
	border-collapse: collapse;
	text-align: center;
	margin: auto;
}

th {
	padding: 18px;
	margin: auto;
	font-size: 26px;
	text-align: right;
	width: 20%;
}

td input {
	width: 460px;
	height: 27px;
	margin-left: 7px;
}

#update_button {
	text-align: center;
	margin: 15px;
}

#update_button input {
	width: 80px;
	height: 25px;
	background-color: #9370DB;
	color: white;
	border-radius: 0.5em;
}
</style>
<script type="text/javascript">
	function update_go(f) {
		f.action = "";
		f.submit();
	}
	function none(f) {
		f.action = "user_onlist.jsp";
		f.submit();
	}
</script>
</head>
<body>
	<!-- ajax의 ex05폴더의 ex06인 text읽기를 이용해서 관리하는 것도 고려 -->
	<%@ include file="login_head.jsp"%>
	<div id="update">
		<div id="admin_head">
			<h1 id="admin_logo">회원정보 관리</h1>
			<div id="nav">
				<div class="nav_bar">
					<a href="prohibited_word.jsp">금지어 관리</a>
				</div>
				<div class="nav_bar">
					<a href="user_mng.jsp">회원정보 관리</a>
				</div>
			</div>
		</div>
		<div id="update_info">
			<h2 id="update_logo">회원정보 - 수정</h2>
			<form method="post" id="update_table">
				<table>
					<tbody>
						<tr>
							<th>이름 :</th>
							<td align="left"><input type="text" name="" value=""></td>
						</tr>
						<tr>
							<th>ID :</th>
							<td align="left"><input type="text" name="" value=""></td>
						</tr>
						<tr>
							<th>닉네임 :</th>
							<td align="left"><input type="text" name="" value=""></td>
						</tr>
						<tr>
							<th>이메일 :</th>
							<td align="left"><input type="text" name="" value=""></td>
						</tr>
						<tr>
							<th>가입일 :</th>
							<td align="left"><input type="text" name="" value=""></td>
						</tr>
					</tbody>
				</table>
				<div id="update_button">
					<input type="button" value="수정하기" onclick="update_ok(this.form)" />
					<input type="button" value="취소" onclick="none(this.form)" />
				</div>
			</form>
		</div>
	</div>
</body>
</html>