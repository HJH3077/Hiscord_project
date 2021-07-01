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

#suggestion {
	position: absolute;
	top: 0 !important;
	left: 0 !important;
	width: 100%;
	height: 100%;
	text-align: center;
	vertical-align: middle;
	background-color: rgba(0, 0, 0, .95);
	align-items: center;
	justify-content: center;
	z-index: 9999;
}

#sg_box {
	background-color: white;
	width: 460px;
	position: absolute;
	left: 40%;
	top: 30%;
	padding: 10px;
}

#sg_box legend h4  {
	font-size: 25px;
	border: 1px solid black;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<%@ include file="login_main.jsp"%>
	<div id="suggestion">
		<div id="sg_box">
			<fieldset>
				<legend><h4>건의사항을 알려주세요!</h4></legend>
				<div>
					<textarea id="sug" name="content" rows="15" cols="55"></textarea>
				</div>
				<div>
					<button id="msg_send">보내기</button>
				</div>
			</fieldset>
		</div>
	</div>
</body>
</html>