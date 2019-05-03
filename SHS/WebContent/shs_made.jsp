<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>소개</title>
<link rel="stylesheet" href="css/common.css">
<style type="text/css">

	.content{
		position: relative;
		width: 390px;
		height: 600px;
		border:2px solid black;
		margin: 50px auto 0;
		background-color: #f1f1f1;
		border-radius:5px;
		box-shadow: 0 2px 5px 0 rgba(0,0,0,.16),
					0 2px 10px 0 rgba(0,0,0,.12);
	}
	.shs_title{
		padding-top: 50px;
		text-align: center;
		font-size: 30px;
		color:#000;
	}
	.shs_manager{
		padding-top: 20px;
		padding-bottom: 20px;
		text-align: center;
		color:#454552;
		font-size: 20px;
	}
	.btn_index{
		padding:10px 12px;
		margin-top: 10px;
		background-color: mediumseagreen;
		color: white;
		width: 140px;
		display: inline-block;
		border-radius: 10px;
		font-size: 26px;
	}
	.btn_index:hover{
		box-shadow: 0 2px 5px 0 rgba(0,0,0,.16),
					0 2px 10px 0 rgba(0,0,0,.12);
	}
	.div_index{
		padding-bottom: 30px;
		text-align: center;
	}
	.btn2{
		background-color: skyblue;
	}
	.btn3{
		background-color: orange;
	}
	.in_content{
		font-size: 25px;
		text-align: right;
	}
	.div_input{
		padding: 9px 20px;
	}
	.div_input > label{
		float: left;
		line-height: 40px;
	}
	.shs_input{
		width: 270px;
		display: inline-block;
		height: 40px;
		font-size: 20px;
		color: #515151;
		outline: none;
		border: 1px solid #aaa;
		padding: 0 10px;
	}
	.btn_wrap{
		display: flex;
		padding: 15px 0px;
		justify-content: space-evenly;
	}
	.made{
		border: 1px solid black;
		width: 300px;
		margin: 0px auto 0;
		font-size: 30px;
		line-height: 50px;
		text-align: center;
		background: white;
	}
	.back_btn{
		background-color: orange;
		width: 200px;
		height: 50px;
		text-align: center;
		font-size: 30px;
		line-height: 50px;
		margin: 50px auto;
		border-radius: 10px;
		cursor: pointer;
	}
	.footer{
		background-color: white;
		width: 300px;
		margin: 50px auto 0;
		border: 1px solid black;
		display: flex;
		padding: 0px;
		letter-spacing: -1;

	}
	.ft1 > img{
		width: 100px;
		height: 100%;
	}

	.ft2{
		padding: 5px 20px;
		display: flex;
		flex-direction: column;
	}
	.ft_m{
		color: mediumseagreen;
	}
	.ft_m1{
		color: skyblue;
	}
	.close_btn{
		display: inline-block;
		width: 200px;
		height: 50px; 
		line-height: 50px;
	}
</style>
</head>
<body>
	<div class="content">
		
		<%@ include file="include/header.jsp" %>
		
		<div class="shs_manager"> - 소개 - </div>
		

		<div class="made">
			학생을 관리하는 시스템 입니다.<br>
			이용해 주셔서 감사합니다.
		</div>

		<div class="footer">
			<div class="ft1">
				<img src="img/cat.png">
			</div >
			<div class="ft2">
				<span>
					<span class="ft_m1">(주)KIMDOOLY SYSTEM</span>
				</span>
				<span>
					<span class="ft_m">만든이</span> : Dooly Kim
				</span>
				<span>
					<span class="ft_m">이메일</span> : elquineas@naver.com
				</span>
				<span>
					<span class="ft_m">만든날짜</span> : 2019/05/02
				</span>
			</div>
		</div>

		<div class="back_btn">
			<a href="index.shs" class="close_btn">뒤로</a>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	</script>
</body>
</html>