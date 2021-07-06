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

#friend_add {
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

#adding {
	background-color: #F5F5F5;
	width: 450px;
	position: absolute;
	left: 40%;
	top: 30%;
	padding: 15px;
	border: 1px solid black;
	border-radius: 0.5em;
}

#adding h2 {
	text-align: center;
	font-size: 35px;
	margin: 10px;
	padding-bottom: 5px;
}

#adding p {
	font-size: 18px;
	font-weight: bold;
	margin: 5px auto;
}

#adding input {
	width: 440px;
	height: 25px;
}

#adding button{
	margin-top: 10px;
	margin-right: 2px;
	float: right; 
	width: 70px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<div id="friend_add">
		<div id="adding">
			<h2>친구추가</h2>
			<p>닉네임을 입력해주세요</p>
			<input type="text" id="chat_room" name="room">
			<button id="f_add">친구신청</button>
		</div>
	</div>
</body>
</html>