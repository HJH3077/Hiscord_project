<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
}

#info_update {
	position: absolute;
	top: 0 !important;
	left: 0 !important;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, .95);
	vertical-align: middle;
	align-items: center;
	justify-content: center;
	z-index: 9999;
}

#profile {
	background-color: #F5F5F5;
	width: 450px;
	position: absolute;
	left: 40%;
	top: 30%;
	border: 1px solid black;
	border-radius: 0.5em;
	padding: 0 15px;
}

#profile_update>img {
	width: 400px;
	height: 40px;
}

#p_avatar img {
	width: 60px;
	height: 60px;
	border-radius: 30px;
}

#p_nickname input {
	width: 150px;
	height: 18px;
}

#p_email input {
	width: 400px;
	height: 20px;
	margin: 4px auto;
}

#adjust {
	cursor: pointer; border-radius : 0.3rem; border : none; padding : 0.7em
	1.5em 0.7em; line-height : 1em; font-style : normal;
	text-align: center;
	background-color: #f2711c;
	color: #fff;
	float: right;
	margin: 20px;
	border-radius: 0.3rem;
	border: none;
	padding: 0.7em 1.5em 0.7em;
	line-height: 1em;
	font-style: normal;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<%@ include file="login_main.jsp"%>
	<div id="info_update">
		<form method="post">
			<div id="profile">
				<div id="profile_update">
					<div id="p_avatar">
						<h4>프로필 수정</h4>
						<img alt="avatar" src="../images/discord.png" /> <input
							type="file" name="file_name" id="img_change"
							style="margin-left: 15px;">
					</div>
					<div id="p_nickname">
						<h4>닉네임 수정</h4>
						<input type="text" name="before_name" readonly> <input type="text"
							name="next_name" placeholder="바꿀 닉네임">
					</div>
					<div id="p_email">
						<h4>이메일 수정</h4>
						<input type="text" name="before_email" readonly> <input type="text"
							name="next_email" placeholder="바꿀 이메일">
					</div>
					<button id="adjust">적용</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>