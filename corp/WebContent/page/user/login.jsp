<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Kakao</title>
<meta charset="UTF-8">
<link rel="shortcut icon" href="static/img/titleIcon.png" type="image/x-icon" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="css/LoginSignup.css">
</head>
<body class="loginbg">
<section>
<div class="container">
	<h1 class="title">Login</h1>
	
	<form action="/corp/user?cmd=loginProc" method="post">
		<div class="namepw input-group mb-3 mx-auto mt-5">
  			<input type="text" class="form-control rounded-pill" placeholder="아이디를 입력해주세요." id="usr" name="username">
		</div>
		<div class="namepw input-group mb-3 mx-auto">
  			<input type="password" class="form-control rounded-pill" placeholder="패스워드를 입력해주세요." id="pwd" name="password">
		</div>
		<br/>
		<button type="submit" class="btn btn-warning" style="margin-left: 305px;">로그인</button>
		<a href="https://kauth.kakao.com/oauth/authorize?client_id=7acf6c8e05ab7255a177324572cb8481&redirect_uri=http://localhost:8000/corp/oauth/kakao?cmd=callback&response_type=code">
		<img height="38px" src="/corp/static/img/kakao_login_medium_narrow.png"></img></a>
	</form>
</div>
</section>
</body>
</html>