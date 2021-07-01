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

#setting {
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

#setting #setbox {
	position: absolute;
	text-align: left;
	background: #fff;
	border-radius: 0.3rem;
	left: 40%;
	top: 20%;
	width: 400px;
}

#setting #setbox #sethead {
	line-height: 1.3rem;
	font-size: 1.4rem;
	padding: 1.3rem 1.5rem;
	border-bottom: 1px solid rgba(34, 36, 38, .15);
}

#setmenu {
	background: 0 0;
	margin-left: 0.4em;
	margin-right: 0.4em;
	margin-top: 5px;
	padding: 10px;
}

#setmenu .menu {
	border-bottom: 1px solid rgba(34, 36, 38, .15);
	padding: 10px;
}

#setmenu a:hover {
	background-color: silver;
	opacity: 0.4;
}

#setmenu a:visited {
	color: black;
}

.form .radio {
	padding: 10px 1px;
	margin-left: 5px;
}

.save{
	cursor: pointer;
    border-radius: 0.3rem;
    border: none;
    padding: 0.7em 1.5em 0.7em;
    line-height: 1em;
    font-style: normal;
    text-align: center;
    background-color: #f2711c;
    color: #fff;
    float: right;
    margin: 20px;
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('input[name="font"]').change(function() {
			if($(this).is(":checked")){
				var msg = $(this).val();
				if(msg == "mini"){
					$(".comment").css("font-size", "10px");
				} else if(msg == "small"){
					$(".comment").css("font-size", "15px");
				} else if(msg == "middle"){
					$(".comment").css("font-size", "20px");
				} else if(msg == "large"){
					$(".comment").css("font-size", "30px");
				} else if(msg == "big"){
					$(".comment").css("font-size", "40px");
				}
			}
		});
	});
</script>
</head>
<body>
	<%@ include file="login_main.jsp"%>
	<div id="setting">
		<div id="setbox">
			<div id="sethead">설정</div>
			<div id="setcontent">
				<div id="setmenu">
					<a class="menu" href="setting.jsp">폰트설정</a> <a class="menu">내
						정보</a>
				</div>
				<div id="activ_tab">
					<form class="form">
						<div class="radio">
							<h3 class="radio_head"
								style="line-height: 0.1px; padding-left: 10px;">채팅 사이즈</h3>
						</div>
						<div class="radio">
							<p class="comment"
								style="margin: 0 auto 8px auto; padding-left: 10px;">메시지입니다.</p>
						</div>
						<div class="radio">
							<input name="font" type="radio" value="mini"> mini
						</div>
						<div class="radio">
							<input name="font" type="radio" value="small"> small
						</div>
						<div class="radio">
							<input name="font" type="radio" value="middle"> middle
						</div>
						<div class="radio">
							<input name="font" type="radio" value="large"> large
						</div>
						<div class="radio">
							<input name="font" type="radio" value="big"> big
						</div>
					</form>
					<div>
						<button class="save">저장</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>