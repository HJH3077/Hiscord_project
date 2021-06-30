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
	background: #fafafa;
	overflow-x: hidden;
	box-sizing: border-box;
}

.chat_container {
	height: 100vh;
	position: sticky;
	background: #fff;
	border-left: 1px solid #ebeced;
	border-right: 1px solid #ebeced;
	margin-left: 50px;
	width: 1200px;
	min-width: 1000px;
}

.chat_container .header{
	font-size: 14px; padding: 15px 0; background: #F18C7E; color: white; text-align: center;
}

.chat_container .chat ul{
	width: 100%; list-style: none;
}

.chat_container .chat ul li.left { text-align: left; }
.chat_container .chat ul li.right { text-align: right; }


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%@ include file="login_head.jsp"%>
<div class="chat_container">
    <div class="header">
        채팅방이름
    </div>
    <div class="chat">
        <ul>
            <!-- 동적 생성 -->
        </ul>
    </div>
    <div class="chatting">
        <textarea placeholder="채팅을 입력하세요."></textarea>
    </div>
    <!-- format -->
    <div class="chat format">
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
    </div>
</div>
<script type="text/javascript">
const Chat = (function(){
    const myName = "blue";
 
    // init 함수
    function init() {
        // enter 키 이벤트
        $(document).on('keydown', 'div.chatting textarea', function(e){
            if(e.keyCode == 13 && !e.shiftKey) {
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
        const chatLi = createMessageTag(LR_className, senderName, message);
 
        $('div.chat:not(.format) ul').append(chatLi);
 
        // 스크롤바 아래 고정
        $('div.chat').scrollTop($('div.chat').prop('scrollHeight'));
    }
 
    // 메세지 전송
    function sendMessage(message) {
        // 서버에 전송하는 코드로 후에 대체
        const data = {
            "senderName"    : "blue",
            "message"        : message
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
        const LR = (data.senderName != myName)? "left" : "right";
        appendMessageTag("right", data.senderName, data.message);
    }
 
    return {
        'init': init
    };
})();
 
$(function(){
    Chat.init();
});

</script>
</body>
</html>