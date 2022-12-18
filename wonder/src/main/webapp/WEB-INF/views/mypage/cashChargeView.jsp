<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@include file="../include2/head.jsp" %>
<%@include file="../include2/menu.jsp" %>
<main id="content" class="content" role="main">

<title>캐쉬충전</title>
<div data-v-76574781="" class="container customer md">
<%@include file="../include2/mypageMenubar.jsp" %>

<!-- jQuery 3 -->
<script src="${contextPath}/resources/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${contextPath}/resources/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${contextPath}/resources/dist/js/adminlte.min.js"></script>

<script>
$(document).ready(function(){
	console.log("반응이있다");
	
	chargelist();
function chargelist(){
	   var url ="${pageContext.request.contextPath}/mypage/chargelist";
	   var paramData = {
			   
	         "mem_id" : '<%=(String)session.getAttribute("mem_id")%>'         
	   };

	   
	   $.ajax({
	      
	      url : url,
	      data : paramData,
	      dataType : 'json',
	      type : 'POST',
	      success : function(result){
	         
	         var htmls = ""; //문서꾸미기
	         if(result.length < 1){
	            htmls += '<h3>신청내역이 없습니다.</h3>';
	         }
	         else{
	            $(result).each(function(){
	                  
	                  htmls = htmls + '<div class="" id="mem_id' +this.mem_id + '">';
	                       //<div id="reno12"> <div id="reno13">
	                   htmls += '<span class="d-block">';
	                 
	                   htmls += this.mem_charge + ' - ';
	                   htmls += '<strong class="text-gray-dark">'+'금액:' + this.mem_amount +'-'+ '</strong>';
	                   htmls += '날짜:';
	                   htmls += this.mem_chargedate;
	                   htmls += '<span style="padding-left: 7px; font-size: 9pt">';
	                  
	                   htmls += '</span>';
	                   htmls += '</span>';
	                   htmls += '</p>';
	                   htmls += '</div>';   
	                   htmls += '</div>'; 
	            });
	         }
	         
	         $("#chargelist").html(htmls); //댓글위치에 html로 보여주기
	      },
	      error : function(result){
	         alert('실패');
	      }
	      
	   });
	   } //end noticelist()
});
</script>



<form action="charge" method="POST">
	<div data-v-88eb18f6="" data-v-0067a928="" class="content_title border">
					<div data-v-88eb18f6="" class="title">
					<h3 data-v-88eb18f6="">캐쉬충전</h3>
					<br>
					</div>
					</div>
					
${user.mem_id } 님의 보유 캐쉬 : ${user.mem_cash }원

<div> <hr>
<input type="text" id="mem_amount" name="mem_amount" placeholder="충전할 금액을 입력해주세요." style="width : 50%"> <p>

</div>
<input type="submit" class="Chargebtn" value="충전신청"> <input type="reset" class="Chargebtn" value="다시입력">
	<div class="profile_group">
<hr>
	${user.mem_id } 님의 캐쉬 충전 내역 :
	</div>
<div id="chargelist" class="profile_group"></div>
</form>

</div>

</main>
<%@include file="../include2/footer.jsp" %>