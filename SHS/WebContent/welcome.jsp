<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome 페이지</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Cute+Font');
	*{font-family: 'Cute Font', cursive; box-sizing: border-box;}
	body, ul{ margin: 0; padding: 0; }
	a{ color: inherit; text-decoration: none; }
	ul{ list-style: none; }

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
		text-align: center;
	}
	.text1{
		font-size: 40px;
	}
	.text2{
		font-size: 25px;
	}
	#rCnt{
		font-size: 22px;
		color: dodgerblue;
		font-weight: bold;
	}
</style>
</head>
<body>
	<div class="content">
		
		<%@ include file="include/header.jsp" %>
		
		<div class="shs_manager"> - 환영합니다. - </div>
		<div class="container">
			<div class="welcome_text text1">등록해주셔서 감사합니다!</div>
			<div class="welcome_text text2">
				<span id="rCnt">3</span>
				초후에 메인 페이지로 이동합니다.
			</div>

		</div>		
	</div>
	
	<script type="text/javascript">
		var cnt=2;
		function countDown(){
			if(cnt == 0){
				clearInterval(s);
				//초세는 것을 중단
				location.href="index.shs";
			}
			document.getElementById("rCnt").innerHTML=cnt;
			//제이쿼리로 바꾸면
			// $('#rCnt').text(cnt); 와 똑같다
			cnt--;
		}
		var s = setInterval(countDown, 1000); //1초 단위로 countdown()실행
	</script>
	
</body>
</html>