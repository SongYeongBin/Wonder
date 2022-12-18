<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@include file="../include2/head.jsp"%>
<%@include file="../include2/menu.jsp"%>

	<div class="content-wrapper">
 경매상품 상세정보
 <!-- <button><a href ="auctiondetail"> 경매 상품 상세 조회 </a></button> -->
 <form method="post" action="auctionproductdetail">
 	<div class="box">
			<div class="box-header">
				<h3 class="box-title">상세보기</h3>
			</div>
			<div class="box-body">
				<div class="form-group">
					<label>게시글 번호</label> <input type="text" name="ab_id"
						class="form-control" value="${auctionproductdetail.ab_id}" readonly="readonly" />
				</div>
				
				<div class="form-group">
					<label>물품</label> <input type="text" name="ab_title"
						class="form-control" value="${auctionproductdetail.ab_title}" readonly="readonly" />
				</div>
				
				<div class="form-group">
					<label>카테고리</label> <input type="text" name="ab_category"
						class="form-control" value="${auctionproductdetail.ab_category}" readonly="readonly" />
				</div>
				
				
				<div class="form-group">
					<label>경매 기간</label> <input type="text" name="ab_limit"
						class="form-control" value="${auctionproductdetail.ab_limit}" readonly="readonly" />
				</div>
				
				<div class="form-group">
					<label>시작 가격</label> <input type="text" name="ab_startprice"
						class="form-control" value="${auctionproductdetail.ab_startprice}" readonly="readonly" />
				</div>
				
				<div class="form-group">
					<label>최소 입찰가</label> <input type="text" name="ab_minimumprice"
						class="form-control" value="${auctionproductdetail.ab_minimumprice}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label>현재 입찰가</label> <input type="number" name="ab_currentprice"
						class="form-control" value="${auctionproductdetail.ab_currentprice}" readonly="readonly" />
				</div>
				
				<div class="form-group">
					<label>호가</label> <input type="number" name="ab_pricerise"
						class="form-control" value="${auctionproductdetail.ab_pricerise}" />
				</div>
				
				<div class="form-group">
					<label>즉시 입찰가</label> <input type="text" name="ab_endprice"
						class="form-control" value="${auctionproductdetail.ab_endprice}" readonly="readonly" />
				</div>
				
				<div class="form-group">
					<label>내용</label>
					<textarea name="ab_content" rows="5" readonly="readonly"
						class="form-control">${auctionproductdetail.ab_content}</textarea>
				</div>
		<input type ="submit" value="입찰"></input>
			</div>

		</div>
 </form>
		
		<div class="box-footer">
			<button class="btn btn-success">메인</button>
			<button class="btn btn-warning">수정</button>
			<button class="btn btn-danger">삭제</button>
		
		</div>
		<!-- 
		<div class="box-footer">
			<button type = "submit" class="btn btn-success ">메인</button>
			<button type = "submit" class="btn btn-warning modifyBtn">수정</button>
			<button type = "submit" class="btn btn-danger removeBtn">삭제</button>
			<button type = "submit" class="btn btn-primary goListBtn">목록</button>
			<button type = "submit" class="btn btn-info">댓글작성</button>
		</div>
		 -->


<script src="https://code.jquery.com/jquery-3.5.1.js"></script>		 
    <script>
    $(document).ready(function(){
    	
    	var formObj = $("form[role='form']");
    	
    	console.log(formObj);
    	//목록 버튼을 눌렀을 때 처리
	    $(".goListBtn").on("click", function(){
	    	formObj.attr("method","get");
	    	formObj.attr("action","auctionlist");
	    	formObj.submit();
	    });
	  //메인 버튼을 눌렀을 때 처리
		$(".btn-success").click(function(){
			location.href="auctionlist";
		});
	
		//삭제 버튼을 눌렀을 때 처리
		$(".btn-danger").click(function(){
			location.href="auctionproductdelete?ab_id=" + ${auctionproductdetail.ab_id};
		});
		//수정 버튼을 눌렀을 때 처리
		$(".btn-warning").click(function(){
			location.href="auctionproductupdate?ab_id=" + ${auctionproductdetail.ab_id};
		});
		//댓글작성 버튼을 눌렀을 때 처리
		$(".btn-info").click(function() {
			location.href = "reply?ab_id=" + ${auctionproductdetail.ab_id};
		});
    });

	</script>
	</div>
	
	<%@include file="../include2/footer.jsp"%>