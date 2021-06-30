<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	text-decoration: none;
}

body {
	margin: 0;
	padding: 0;
	background: #fafafa;
	overflow-x: hidden;
	box-sizing: border-box;
	width: 100%;
}

#login_container{
	margin-left: 50px!important;
	width: 50%;
	min-width: 1000px;
	height: 100vh;
	background-color: #fff;
	border-left: 1px solid #ebeced;
	border-right: 1px solid #ebeced;
}

#login_title {
	text-align: center;
	font-size: 70px;
	line-height: 50px;
	margin-top: 10%;
}

#login_title a:active, a:visited {
	color: black;
}

#login {
	width: 80%;
	text-align: center;
	margin: auto;
	padding: 25px;
	font-size: 20px;
}

#login input {
	padding: 8px;
	margin-top: 40px;
}

.log input{
	width: 450px;
}

.log_go input{
	width: 200px;
	height: 40px;
	background-color: #ebeced;
	border: 1px solid silver;
}

.find{
	margin-top: 20px;
}

.find a:active, a:visited {
	color: black;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<%@ include file="logout_head.jsp"%>
	<div id="login_container">
		<h1 id="login_title">
			<a href="main.jsp">Hiscord</a>
		</h1>
		<form method="post">
			<div id="login">
				<fieldset>
					<legend>Login</legend>
					<div class="log">
						ID <input type="text" name="id" required>
					</div>
					<div class="log">
						PW <input type="password" name="pw" required>
					</div>
					<div class="log_go">
						<input type="submit" value="로그인" onclick="login_ok()">
					</div>
				</fieldset>
				<div class="find">
					<a href="#">아이디 찾기</a>
					<span>|</span>
					<a href="#">비밀번호 찾기</a>
					<span>|</span>
					<a href="join.jsp">회원가입</a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>