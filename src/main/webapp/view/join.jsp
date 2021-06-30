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
	background-color: #fafafa;
}

#join_container {
	width: 100%;
	width: 1500px;
	margin: auto;
}

#join_head {
	text-align: center;
	font-size: 50px;
	line-height: 40px;
}

.join {
	margin: auto;
	padding: 20px;
}

.join_row {
	background-color: #fff;
	width: 800px;
	margin: auto;
	padding: 20px;
	border: 1px solid #ebeced;
	border-radius: 0.5em;
}

.join_row h3 {
	width: 400px;
	margin: auto;
	padding: 4px;
}

.join_row p {
	width: 400px;
	margin: auto;
	padding: 3px;
}

.join_row input {
	width: 300px;
	height: 23px;
}

#join_btn {
	float: right;
	margin-right: 35%;
	margin-top: 20px;
}

#join_btn input {
	width: 400px;
	height: 40px;
	background-color: #32CD32;
	margin-bottom: 30px;
}
</style>
<script type="text/javascript">
	function id_chk(f) {
		f.action = "";
		f.submit();
	}

	function join_ok() {

	}
</script>
</head>
<body>
	<form method="post">
		<div id="join_container">
			<h1 id="join_head">회원 가입</h1>
			<div class="join">
				<div class="join_row">
					<h3>아이디</h3>
					<p>
						<input type="text" name="id" placeholder="사용할 아이디를 입력해주세요"
							required style="float: left; margin-right: 10px;'">
					</p>
					<button style="height: 23px;">중복확인</button>
				</div>
				<div class="join_row">
					<h3>닉네임</h3>
					<p>
						<input type="text" name="nickname" placeholder="사용할 닉네임을 입력해주세요"
							required>
					</p>
				</div>
				<div class="join_row">
					<h3>비밀번호</h3>
					<p>
						<input type="password" name="pwd"
							placeholder="6~16자 영문 대/소문자, 숫자 조합" required>
					</p>
					<p style="font-size: 3px; color: red;"></p>
					<p>
						<input type="password" name="re_pwd" placeholder="비밀번호를 재확인해주세요"
							required>
					</p>
				</div>
				<div class="join_row">
					<h3>이름</h3>
					<p>
						<input type="text" name="name" placeholder="이름을 입력해주세요" required>
					</p>
				</div>
				<div class="join_row">
					<h3>이메일</h3>
					<p>
						<input type="email" id="email" name="email"
							placeholder="이메일 아이디를 입력해주세요" required> @ <input
							type="text" id="email_domain" name="email_domain"
							placeholder="이메일 선택" style="margin-top: 10px;"> <select
							class="select" style="height: 26px;">
							<option value="">-선택-</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="daum.net">daum.net</option>
							<option value="nate.com">nate.com</option>
						</select>
					</p>
				</div>
				<div id="join_btn">
					<input type="submit" value="가입하기" onclick="join_ok()">
				</div>
			</div>
		</div>
	</form>
</body>
</html>