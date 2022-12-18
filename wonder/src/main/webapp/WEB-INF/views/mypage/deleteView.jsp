<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@include file="../include2/head.jsp" %>
<%@include file="../include2/menu.jsp" %>
<main id="content" class="content" role="main">
<div data-v-76574781="" class="container customer md">
<%@include file="../include2/mypageMenubar.jsp" %>

<i class="fa fa-love"></i><a href="https://bootstrapthemes.co"></a>
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
  
  
  

<%@include file="../include2/head.jsp" %>


<script type="text/javascript">

		$(document).ready(function(){
			// 취소
			$(".cencle").on("click", function(){
				
				location.href = "/";
						    
			})
		
			$("#submit").on("click", function(){
				var password = document.getElementById('password').value; 
				alert(password);
				alert(${user.mem_password});
				if(password==""){
					alert("비밀번호를 입력해주세요.");
					$("#mem_password").focus();
					return false;
				}else if(${user.mem_password}!= password ){
					alert("비밀번호가 틀렸습니다.");
					$("#mem_password").focus();
					return false;
				}else if(${user.mem_password}== password){
					
					alert("그동안 이용해주셔서 감사합니다.");
				 	return true;
				}
					
			});
		});
		<c:if test="${msg == false}">
				alert("비밀번호가 맞지 않습니다.");
				</c:if>
	</script>
			
				
			


	
	<section id="container">
			<form action="memberDelete" method="post">
			<div data-v-88eb18f6="" data-v-0067a928="" class="content_title border">
					<div data-v-88eb18f6="" class="title">
					<h3 data-v-88eb18f6="">회원탈퇴</h3>
					<br>
					</div>
					</div>
			<div class="addmemberbox">
			
				<div class="form-group has-feedback">
					<h5>아이디</h5>
					<input type="text"  name="mem_id" class="deleteid" value="${user.mem_id}" readonly="readonly"/>
				</div>
					<hr>
					
				<div class="form-group has-feedback">
					<h5>이름</h5>
					<input type="text" name="mem_name" class="deleteid" value="${user.mem_name}" readonly="readonly"/>
				</div>
					<hr>
				
				 <div class="textForm">
				 	<h5>비밀번호 확인</h5>
        <input name="mem_password" type="password" class="pw" name="mem_password" id="password" placeholder="비밀번호를 입력해주세요">
      </div>
					
				<div class="form-group has-feedback">
					<button class="deletebtn" type="submit" id="submit">회원탈퇴</button>
					<button class="deletebtn" type="reset">취소</button>
				</div>
					</div>
			</form>
			<div>
				
			</div>
		</section>
		
	<a class="scroll-down icon-arrow-left" href="#content" data-offset="-45"><span class="hidden">Scroll Down</span></a>
		</div>	
	</main>

	<footer class="site-footer clearfix">
	<%@include file = "../include2/footer.jsp" %>
	</footer>

<%@include file = "../include2/script.jsp" %>

