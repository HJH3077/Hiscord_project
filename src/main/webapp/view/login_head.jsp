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
	font-weight: 400;
}

#head {
	overflow-x: hidden;
	box-sizing: border-box;
	width: 370px;
	min-width: 370px;
	margin-left: 7%;
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

.visible_menu{
	position: absolute;
	cursor: auto;
	display: none;
    background: #fff;
    font-size: 1em;
    text-align: left;
    border: 1px solid rgba(34,36,38,.15);
    border-radius: 0.4rem;
    left: 60%!important;
    right: 3%!important;
}

.menu_list{
	white-space: nowrap;
	border-bottom: 1px solid #f1f3f5!important;
    border-top: none!important;
    padding: 16px!important;
    cursor: pointer;
}

.menu_list{
	position: relative;
    cursor: pointer;
    display: block;
    text-align: left;
    line-height: 1em;
    color: rgba(0,0,0,.87);
    padding: 0.8rem 1rem!important;
    font-size: 1rem;
    font-weight: 400;
    z-index: 9999;
}

.menu_list:hover{
	opacity: 0.5;
	background-color: silver;
}

.menu_list a:visited, a:active{
	color: black;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div id="head">
		<div class="container">
			<div class="logo">
				<a href="main.jsp"> <img alt="logo" src="../images/logo.PNG"
					width="100"></a>
				<div class="listbox">메뉴
					<div class="visible_menu">
						<div role="option" class="menu_list" style="pointer-events: all;"><a href="#">친구</a></div>
						<div role="option" class="menu_list"><a href="#">설정</a></div>
						<div role="option" class="menu_list"><a href="#">건의사항</a></div>
						<div role="option" class="menu_list"><a href="#">로그아웃</a></div>
					</div>
				</div>
			</div>
			<script type="text/javascript">
	            $(".listbox").click(function(){
	                if($(".visible_menu").is(":visible")){
	                    $(".visible_menu").css("display","none");
	                }
	                else{
	                    $(".visible_menu").css("display","block");
	                }
	            })
			</script>
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