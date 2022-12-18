<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@include file="../include2/head.jsp" %>
<%@include file="../include2/menu.jsp" %>


	<main id="content" class="content" role="main">

	
	
	<script type="text/javascript">
   function pwtest1() {
      var pw1 = document.getElementById('password3').value;
      var pw2 = document.getElementById('password4').value;
      if (pw1 != pw2) {
         alert("비밀번호가 일치 하지 않습니다");
         	return "pwsfind";
      } else if(pw1 == "" ) {
    	  alert("비밀번호를 입력해주세요");
    	  	return "pwsfind";
      }  else{
    	  
         alert("비밀번호변경이 완료되었습니다.");
         return true;
      }
    	  

   }
   </script>
  
<h3 style="text-align : center">변경하실 비밀번호를 입력해주세요</h3> 
	<hr>
<form role="form" method="post" action="pwupdate">
		<div class="addmemberbox">
			<div class="form-group">
				<label></label> <input type="hidden" readonly
					name="mem_id" id="mem_id" class="form-control"  value="${mem_id}">
						<div class="textForm">
				<label>변경하실 비밀번호:</label> <input type="password"
					name="mem_password" id="password3" class="form-control"  value="${mem_password}" placeholder="비밀번호를 입력해주세요.">
					</div>
					<div class="textForm">
				<label>비밀번호 확인:</label> <input type="password"
					id="password4" class="form-control" placeholder="다시한번 입력해주세요">
					</div>
			</div>
				<hr>
   <button type="submit" class="passwordfindbtn" onclick="pwtest1();" >수정완료</button> <button type="reset" class="passwordfindbtn">다시 입력</button>
	</div>
	</form>
</main>	
	<footer class="site-footer clearfix">
	<%@include file = "../include2/footer.jsp" %>
	</footer>

<%@include file = "../include2/script.jsp" %>
