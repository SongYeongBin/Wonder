<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="../include2/head.jsp" %>
<%@ include file = "../include2/menu.jsp" %>
<link rel="stylesheet" type="text/css" href="${contextpath}/resources/css/styles.css"/>
<div class="site-wrapper">
	
	
	<header class="main-header post-head " style="background-image: url(resources/img/jo.png)">
	<div class="vertical">
		<div class="main-header-content inner">
			<h1 class="post-title">언제나 어디서나 에센셜</h1>
			<div class="entry-title-divider">
				<span></span><span></span><span></span>
			</div>
		</div>
	</div>
	</header>
	<main id="content" class="content" role="main">
<div class="container">
		<form action="${contextpath }/product/saleinsert" method="post" accept-charset="utf-8">
		<c:set value="${product}" var="dto"/>
						<c:set var="ran"><%= java.lang.Math.round(java.lang.Math.random() * 999999) %></c:set>
							<input type="hidden" value="${dto.product_id*ran}" name="product_id">
							<input type="hidden" value="${dto.product_name}" name="product_name">
							<input type="hidden" value="${size }" name="product_size">
							<input type="hidden" value="${dto.product_auction }" name="product_auction">
							<input type="hidden" value="${dto.product_cate }" name="product_cate">
							<input type="hidden" value="${dto.product_hits }" name="product_hits">
							<input type="hidden" value="${dto.product_img }" name="product_img">
							${dto.product_name}
		<c:set value="2500" var="del_fee"/>
		<div class="row qnas" style="text-align: center;">
			<h1 class="page-header">판매하기</h1>
			<table class="table table-hover" style="width: 70%; margin: auto; border-bottom: 1px solid #D5D5D5;">
				<thead>
					<tr>
						<th>상품</th>
						<th>상품명</th>
						<th>사이즈</th>
						<th>수량</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td><img alt="사진미출력" src="../resources/img/${dto.product_img }" width="40%">
							<input type="hidden" value="Deliverypreparation" name="order_status">
							</td>
							<td>${dto.product_name}</td>
							<td>${size }</td>
							<td>1개</td>
		

						</tr>			
				</tbody>
			</table>
		</div>
			<table>
				<tr>
					<c:choose>
					    <c:when test="${price eq '판매입찰' }">
					    <th> <input type="radio" name="price" id="r1" value="1" checked><label for="r1">판매입찰</label>
					    
					    </c:when>
					    <c:otherwise>
							<th> <input type="radio" name="price" id="r1" value="1" ><label for="r1">판매입찰</label>
							<th> <input type="radio" name="price" id="r2" value="${price }" checked><label for="r2" >즉시판매</label>
					    </c:otherwise>
					</c:choose>
				</tr>
				
				<tr>
				<c:choose>
					    <c:when test="${price eq '판매입찰' }">
					    <th><input type="text"name="product_price" id="price" style = "width: 300px;
  height: 32px;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  background-color: rgb(233, 233, 233);">원</th>
					    </c:when>
					    <c:otherwise>
					    	<th><input type="text"name="product_price" id="price" style = "width: 300px;
  height: 32px;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  background-color: rgb(233, 233, 233);">원</th>
							<th>${price}원</th>
					    </c:otherwise>
					</c:choose>
					
				</tr>
			</table>
			<script type="text/javascript">
			$(document).ready(function(){
			  $("input:radio[name=price]").click(function(){
			    if($("input[name=price]:checked").val() == "1"){
			      $("input:text[name=product_price]").attr("disabled",false);
			    }else {
			      $("input:text[name=product_price]").attr("disabled",true);
			    }
			  });
			});
			</script>
			
			
		
		<div class="row" style="text-align: center; margin: 80px 0;">
		<c:set value="${member}" var="vo"/>
			<h1 class="page-header">판매자정보</h1>
		</div>
		<div class="row">
			<div class="form-horizontal">
				<div class="form-group">
					<label for="inputId" class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputId" placeholder="ID" name="mem_id" value="${vo.mem_id }" readonly>
					</div>
				</div>
				
				<div class="form-group">
					<label for="inputName" class="col-sm-2 control-label">이름</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputName" placeholder="Name" name="order_name" value="${vo.mem_name}" readonly>
					</div>
				</div>
				<div class="form-group">
					<label for="inputId" class="col-sm-2 control-label">휴대폰번호</label>
					<div class="col-sm-10">
						<input class="form-control" id="inputId" placeholder="ID" name="order_phone" value="${vo.mem_phonenum}" readonly>
					</div>
				</div>					
							
			</div>
		</div><!-- class=row -->
		
		<div class="row" style="text-align: center; margin: 80px 0;">
			
			<div class="row" style="text-align: center; margin: 50px 0;">
				<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
				
				<input type="hidden" id="amount" name="totalAmount">
				</label>
			</div>
			<div>
					물건보내실주소:경기도 수원시 팔달구 덕영대로 899
				<button class="sub" type="submit" id ="sub" onclick="button1_click();">판매하기</button>
			
			</div>
		</div>
		</form>
		<button class="btn btn-default back_btn"><a href ="${contextpath }/product/productdetail?product_name=${dto.product_name}&product_cate=${dto.product_cate}">돌아가기</a></button>
	</div>
	</main>
	<script>
function button1_click() {
		    if($("input[name=price]:checked").val() == "1"){
		    alert("판매입찰등록 되었습니다");
		    }else{
		    alert("상품을 보내주시면 캐쉬가 자동충전됩니다");	
		    }
}
</script>
	</script>
	<div class="clearfix">
	</div>
	<footer class="site-footer clearfix">

	</footer>
</div>

</body>
</html>