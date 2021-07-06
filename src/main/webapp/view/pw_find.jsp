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

#find_container {
	margin-left: 50px !important;
	width: 50%;
	min-width: 1000px;
	background-color: #fff;
	border-left: 1px solid #ebeced;
	border-right: 1px solid #ebeced;
}

#find_head {
	margin: auto;
	margin-top: 15%;
	width: 900px;
}

#find_logo{
	text-align: center;
	margin: 70px;
	font-size: 70px;
	line-height: 50px;
}

#find_head #f_id {
	width: 450px;
	float: left;
	text-align: center;
	border: 1px solid silver;
	border-bottom-color: black;
	border-right-color: black;
	padding: 10px;
	margin: 0;
}

#find_head #f_pw {
	text-align: center;
	border: 1px solid black;
	border-bottom-color: #fff;
	padding: 10px;
	margin: 0;
}


#find_info {
	border: 1px solid black;
	border-top-color: #fff;
	box-sizing: border-box; width : 900px;
	margin: auto;
	width: 900px; margin : auto;
	padding: 30px;
}

.finding{
	width: 450px;
	height: 27px;
	margin: 5px 20px;

}

table, th, td, tr{
	border: 1px solid black;
	border-collapse: collapse;
	margin: 50px auto;;
	width: 800px;
	font-size: 18px;
}

#id_finding{
	text-align: center;
}

#id_finding input{
	border: none;
	width: 200px;
	height: 50px;
	background-color: #6b80f1;
	color: white;
}

* a:link, a:visited {
	color: black;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
	<%@ include file="logout_head.jsp"%>
	<div id="find_container">
		<form method="post">
			<div id="find">
				<div id="find_head">
					<h1 id="find_logo"><a href="logout_main.jsp">Hiscord</a></h1>
					<div id="f_id"">
						<a href="id_find.jsp">아이디 찾기</a>
					</div>
					<div id="f_pw">
						<a href="pw_find.jsp">비밀번호 찾기</a>
					</div>
				</div>
				<div id="find_info">
					<table>
						<tbody>
							<tr>
								<td style="width: 20%; background-color: #ebeced;" align="center">이름</td>
								<td><input type="text" class="finding"></td>
							</tr>
							<tr>
								<td style="width: 20%; background-color: #ebeced;" align="center">아이디</td>
								<td><input type="text" class="finding"></td>
							</tr>
							<tr>
								<td style="width: 20%; background-color: #ebeced;" align="center">이메일</td>
								<td><input type="text" class="finding"></td>
							</tr>
						</tbody>
					</table>
					<div id="id_finding">
						<input type="submit" value="비밀번호 찾기" onclick="pw_find_go()">
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>