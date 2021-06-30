<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	text-decoration: none;
}

/* 스크롤바 기능은 살리고 안보이게 하기 */
::-webkit-scrollbar { display: none; }

body {
	margin: 0;
	padding: 0;
	background: #fafafa;
	display: flex;
	-ms-overflow-style: none;
}

#head {
	overflow-x: hidden;
	box-sizing: border-box;
	width: 370px;
	min-width: 370px;
	margin-left: 5%;
	height: 100%;
}

.container {
	height: 100vh;
	position: sticky;
	background: #fff;
	border-left: 1px solid #ebeced;
	border-right: 1px solid #ebeced;
	overflow: hidden auto;
}

.container .logo {
	padding: 0 16px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	height: 60px;
	z-index: 9000;
	border-bottom: 1px solid #f1f3f5;
}

.list {
	padding: auto;
	height: 80px;
	border-bottom: 1px solid #f1f3f5;
	font-size: 20px;
}

.list .room{
	padding: 13px;
	margin-top: 7px;
}

.chat{
	padding: auto;
	height: 60px;
	border-bottom: 1px solid #f1f3f5;
}

.chat .room_add{
	padding: 13px;
	text-align: center;
	font-size: 20px;
}
</style>
<script type="text/javascript">
	function chat_add() {
		
	}
</script>
</head>
<body>
	<div id="head">
		<div class="container">
			<div class="logo">
				<a href="main.jsp"> <img alt="logo" src="../images/logo.PNG"
					width="100">
				</a> <a href="login.jsp">로그인</a>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">공용
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="list">
				<div class="room">
					<a href="#"> <img alt="디스코드" src="../images/discord.png"
						style="width: 40px;"> <span style="margin-left: 10px;">
							채팅방</span>
					</a>
				</div>
			</div>
			<div class="chat">
				<div class="room_add">
					<a href="#" onclick="chat_add()"> <span>채팅방 추가</span> <img alt="추가"
						src="../images/plus.png" style="width: 30px; height: 20px;">
					</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>