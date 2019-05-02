<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학사관리</title>
<link rel="stylesheet" href="css/common.css">
<style type="text/css">
	
	.content{
		width: 390px;
		height: 600px;
		border:2px solid black;
		margin: 50px auto 0;
		background-color: #eee;
		border-radius:5px;
		box-shadow: 0 2px 5px 0 rgba(0,0,0,.16),
					0 2px 10px 0 rgba(0,0,0,.12);
	}
	.shs_manager{
		padding-top: 20px;
		padding-bottom: 20px;
		text-align: center;
		color:#454552;
		font-size: 20px;
	}
	.btn_index{
		padding: 15px 12px;
		margin-top: 10px;
		background-color: mediumseagreen;
		color: white;
		width: 180px;
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
	.container{
		height: 320px;
		display: flex;
		flex-direction: column;
		justify-content: space-evenly;
	}
</style>
</head>
<body>
	<div class="content">
		
		<%@ include file="include/header.jsp" %>
		
		<div class="shs_manager"> - 학사관리 - </div>
		<div class="container">
			<div class="div_index">
				<a href="insert.shs" class="btn_index btn1">학생등록</a>
			</div>
			<div class="div_index">
				<a href="select.shs" class="btn_index btn2">출석부</a>
			</div>
			<div class="div_index">
				<a href="#" class="btn_index btn3">만든이</a>
			</div>
		</div>		
	</div>
</body>
</html>