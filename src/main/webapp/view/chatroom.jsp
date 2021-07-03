<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Lato&display=swap');

body {
	margin: 0;
	padding: 0;
	background: #fafafa;
}

#chat_container {
	display: flex;
	width: 100%;
	max-height: 100%;
}

#chat_place {
	background: #fff;
	border-left: 1px solid #ebeced;
	border-right: 1px solid #ebeced;
	margin-left: 50px;
	width: 1000px;
	min-width: 1000px;
}

#chat_header {
	font-size: 15px;
	padding: 13px 0;
	background-color: #fff;
	color: black;
	text-align: center;
	border-bottom: 1px solid #ebeced;
	font-family: 'Lato', sans-serif;
	font-weight: bold;
	line-height: 2em;
	height: 32px;
}

#chat_container #chat_box {
	position: sticky;
	padding: 0 22px;
	background-color: #fff;
	box-sizing: border-box;
	height: 85%;
}

#chatting {
	height: 85vh;
	overflow: scroll;
	display: flex;
	flex-direction: column-reverse;
	flex: 1 1;
}

#chat_input {
	margin-top: 20px;
}

#chat_input textarea {
	width: 1000px;
	height: 45px;
	box-sizing: border-box;
	border-radius: 0.4em;
	font-size: 18px;
	border-radius: 0.4em;
}

#chat_user {
	background-color: #fff;
	margin-left: 10px;
	width: 200px;
	max-height: 100%;
	height: 100vh;
	overflow: hidden auto;
}

#list_title {
	text-align: center;
	height: 42px;
	border-bottom: 1px solid #f1f3f5;
	font-size: 15px;
	font-family: 'Lato', sans-serif;
	font-weight: bold;
}

.user_list {
	padding: auto;
	height: 80px;
	border-bottom: 1px solid #f1f3f5;
	font-size: 20px;
}

.user_list .rooms {
	padding: 13px;
	margin-top: 7px;
}

.chat_content {
	display: flex;
	height: auto;
}
.chat_content .ch_avatar{
    text-align: center;
}
.chat_content .ch_avatar img{
    width: 3.5em;
    height: 3.5em;
    border-radius: 1.75em;
}

.chat_content .comment p{
	padding: 0;
	margin: auto;
	margin-left: 15px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%@ include file="login_head.jsp"%>
	<div id="chat_container">
		<div id="chat_place">
			<div id="chat_header">채팅방이름</div>
			<div id="chat_box">
				<div id="chatting">
					<!-- 동적 생성 -->
					<div class="chat_content">
						<div class="ch_avatar">
							<img alt="디스코드" src="../images/discord.png" style="width: 55px;">
						</div>
						<div class="comment">
							<p style="font-size: 20px;">홍길동</p>
							<p style="margin-top: 5px;">안녕하세요1234</p>
						</div>
					</div>
				</div>
			</div>
			<div id="chat_input">
				<textarea placeholder="채팅을 입력하세요."></textarea>
			</div>
			<!-- format -->
			<!--     <div class="chat format">
        <ul>
            <li>
                <div class="sender">
                    <span></span>
                </div>
                <div class="message">
                    <span></span>
                </div>
            </li>
        </ul>
    </div> -->
		</div>
		<div id="chat_user">
			<div id="list_title">
				<p>참가자 목록</p>
			</div>
			<div class="user_list">
				<div class="rooms">
					<img alt="디스코드" src="../images/discord.png" style="width: 40px;">
					<span style="margin-left: 10px;"> 유저1</span>

				</div>
			</div>
			<div class="user_list">
				<div class="rooms">
					<img alt="디스코드" src="../images/discord.png" style="width: 40px;">
					<span style="margin-left: 10px;"> 유저2</span>
				</div>
			</div>
		</div>
	</div>
</body>
</html>


<!-- <script type="text/javascript">
		const Chat = (function() {
			const myName = "blue";

			// init 함수
			function init() {
				// enter 키 이벤트
				$(document).on('keydown', 'div.chatting textarea', function(e) {
					if (e.keyCode == 13 && !e.shiftKey) {
						e.preventDefault();
						// textarea의 값을 그대로 가져옴
						const message = $(this).val();

						// 메시지 전송
						sendMessage(message);
						// 입력창 clear
						clearTextarea();
					}
				});
			}

			// 메세지 태그 생성
			function createMessageTag(LR_className, senderName, message) {
				// 형식 가져오기
				let chatLi = $('div.chat.format ul li').clone();

				// 값 채우기
				chatLi.addClass(LR_className);
				chatLi.find('.sender span').text(senderName);
				chatLi.find('.message span').text(message);

				return chatLi;
			}

			// 메세지 태그 append
			function appendMessageTag(LR_className, senderName, message) {
				const chatLi = createMessageTag(LR_className, senderName,
						message);

				$('div.chat:not(.format) ul').append(chatLi);

				// 스크롤바 아래 고정
				$('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
			}

			// 메세지 전송
			function sendMessage(message) {
				// 서버에 전송하는 코드로 후에 대체
				const data = {
					"senderName" : "blue",
					"message" : message
				};

				// 통신하는 기능이 없으므로 여기서 receive
				resive(data);
			}

			// 메세지 입력박스 내용 지우기
			function clearTextarea() {
				$('div.chatting textarea').val('');
			}

			// 메세지 수신
			function resive(data) {
				const LR = (data.senderName != myName) ? "left" : "right";
				appendMessageTag("right", data.senderName, data.message);
			}

			return {
				'init' : init
			};
		})();

		$(function() {
			Chat.init();
		}); -->
</script>