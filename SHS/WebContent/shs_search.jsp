<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- jstl 라이브러리를 사용하기 위한 선언문 -->
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학생검색</title>
<link rel="stylesheet" href="css/common.css?v=1">
<style type="text/css"> 

	.content{
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
		background-color: skyblue;
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
		background-color: mediumseagreen;
	}
	.btn3{
		background-color: orange;
	}
	.in_content{
		width: 330px;
		margin: 0 auto;
	}
	table{
		font-size: 17px;
		border-collapse: collapse;
		width: 330px;
		margin-bottom: 20px;
	}
	.table_title{
		background-color: yellowgreen;
		height: 25px;
		color: #515151;
		border: 0px;
	}
	.table_data{
		background-color: white;
		height: 25px;
		font-size: 17px;
	}
	.table_data:hover{
		background-color: lightyellow;
	}
	th{ padding: 5px; }
	td{ text-align: center; padding: 3px 0px;}
	tr{ border-bottom: 1px dashed #bbbbbb }
	.uBtn{color: skyblue;}
	.dBtn{color: salmon;}
	.modal{
		display:none;
		position: absolute;
		width: 100%;
		height: 100%;
		margin: 0 auto;
		background-color : rgba(0,0,0,0.4);
		top:0;
		left:0;
		text-align: center;
	}
	.choice{
		line-height:50px;
		position:relative;
		width:200px;
		height:100px;
		background-color: white;
		margin: 300px auto;
		opacity: none;
		border:2px solid black;
	}
	.ch_btn{
		cursor:pointer;
		width: 60px;
		height: 30px;
		margin: 0 auto;
		border: 1px solid gray;
	}
	.btn_wrap{
		line-height:30px;
		width:100%;
		justify-content: space-evenly;
		position: absolute;
		bottom:10px;
		margin: 0 auto;
		display:flex
	}
	.text_wrap{
		margin-top: 10px;
		font-size: 15px;
		line-height: 15px;
	}
	.greenbtn{background-color: mediumseagreen;}
	.redbtn{background-color: tomato;}
	.search_wrap{
		margin-bottom:15px;
		width: 100%;
		height: 40px;
		position: relative;
	}
 	.input_search{
		height: 100%;
		padding: 0 10px;
		border: 2.5px solid mediumpurple;
		outline: none;
		color: #515151;
		font-size: 20px;
		width: 100%;
		border-radius: 50px;
	}
	.search_btn {
		display:inline-flex;
		width:40px;
		height: 100%;
		background-color: mediumpurple;
		position: absolute;
		top: 0;
		right: 0;
		border-radius: 50%;
		align-items: center;
		justify-content: center;
	}
	.search_btn:hover{
		box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16),
					0 2px 10px 0 rgba(0,0,0,0.12);
	}
	.search_btn > i {
		font-size:20px;
		color:white;
	}
	.search_result{
		color : gray;
		font-size:15px;
		padding-left: 10px;
	}
	.err_msg{
		display:none;
		color:tomato;
		margin-top: -15px;
		padding-left:10px;
	}
	.point{
		color: dodgerblue;
	}
</style>
</head>
<body>
	<div class="modal">
		<div class="choice">
			<div class="text_wrap">
				정말로
				<span class="name"></span> 학생을<br>
				삭제하시겠습니까?
			</div>
			<div class="btn_wrap">
				<div class="ch_btn redbtn">NO</div>
				<div class="ch_btn greenbtn">YES</div>
			</div>
		</div>
	</div>
	<div class="content">
		
		<%@ include file="include/header.jsp" %>
		
		<div class="shs_manager"> - 학생검색 - </div>
		
		<div class="in_content">
			<div class="search_wrap">
				<input type="text" placeholder="검색할 이름을 입력해주세요." id="input_search" name="input_search" class="input_search" maxlength="4">
				<a href="#" class="search_btn"><i class="fas fa-search"></i></a>
			</div>
			<span class="err_msg">필수정보 입니다.</span>
		</div>
		
		<div class="in_content">
			<c:if test="${cnt > 0}">
				<span class="search_result">
					<span class="point">"${name}"</span>으로 검색한 결과 : 총 ${cnt}건 검색됨.
				</span>
			</c:if>
		</div>
		
		<div class="in_content">
			<table>
				<tr class="table_title">
					<th>ID</th>
					<th>NAEM</th>
					<th>Tel.</th>
					<th></th>
					<th></th>
				</tr>
				
				<c:if test="${shslist.size() ==0}">
					<tr class = "table_data">
						<td colspan ="5">조회된 정보가 없습니다.
					</tr>
				</c:if>
				
				<!-- items는 SHSSelect에서 사용한 setAttribute와 같아야한다. -->
				<c:forEach items="${shslist}" var="mDto">
					<tr class="table_data">
						<td class="sid">${mDto.sid}</td>
						<td class="sname">${mDto.sname}</td>
						<td>${mDto.sphone}</td>
						<td><a href="insertPlay?id=${mDto.sid}" class="uBtn">수정</a></td>
						<td><a href="#" class="dBtn">삭제</a></td>
					</tr>
				</c:forEach>


			</table>
		</div>
		<div class="div_index">
			<a href="index.shs" class="btn_index btn3">뒤로가기</a>
		</div>
		
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {
			var id, name;
			$('.dBtn').click(function(){
				$('.modal').css('display', 'block');
				id=$(this).closest('tr').find('.sid').text();
				name=$(this).closest('tr').find('.sname').text();
				/* closest 가장 가까운 부모를 찾음 [('tr') tr인 가장가까운 부모] */
				$('.name').text('"'+name+'"').css('color', 'dodgerblue')
											 .css('font-size', '20px');
			});
			$('.redbtn').click(function(){
				$('.modal').css('display', 'none');	
			});
			$('.greenbtn').click(function(){
				location.href="SHSDelete?id="+id;	
			});		
			
			
			//학생검색버튼 클릭 시!
			$('.search_btn').click(function(){
				var name = $.trim($('#input_search').val());
				
				var regEmpty = /\s/g;
				var regNum = /[~0-9]/g;
				
				if(name == '' || name.length == 0){
					$('.err_msg').css('display', 'block')
									   .css('color','tomato')
									   .text('필수정보 입니다.');
					return false;
				} else if(regNum.test(name)){
					$('.err_msg').css('display', 'block')
									   .css('color','tomato')
									   .text('문자만 입력해주세요.');
					return false;
				} else if(name.match(regEmpty)){
					$('.err_msg').css('display', 'block')
									   .css('color','tomato')
				   					   .text('공백은 입력할 수 없습니다.');
					return false;
					
					
				} else if(name.length > 4 || name.length < 2){
					$('.err_msg').css('display', 'block')
									   .css('color','tomato')
									   .text('2~4글자 이하로 입력해주세요.');
					return false;
				} 
				
				location.href="searchPlay.shs?name=" + name;

			});
		});
	</script>
</body>
</html>