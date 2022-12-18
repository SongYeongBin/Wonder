<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@include file="../include2/head.jsp" %>
<%@include file="../include2/menu.jsp" %>
<main id="content" class="content" role="main">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



<div data-v-76574781="" class="container customer md">
	<%@include file="../include2/mypageMenubar.jsp" %>


 
    <!-- / wpf loader Two -->       
 <!-- SCROLL TOP BUTTON -->
    <a class="scrollToTop" href="#" style="display: none;"><i class="fa fa-chevron-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->


 
  <!-- CART PAGE 상단 글자 -->
  <section id="aa-catg-head-banner">
   <div class="aa-catg-head-banner-area">
     <div class="container">
      <div class="aa-catg-head-banner-content">
        <h2>찜목록</h2>
        <ol class="breadcrumb">
        </ol>
      </div>
     </div>
   </div>
  </section>
  <!-- CART PAGE 상단 글자 -->

 <!-- Cart view section -->
 <section id="cart-view">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="cart-view-area">
           <div class="cart-view-table">
             <form action="">
               <div class="table-responsive">
                  <!-- 장바구니 표 -->
                  <table class="table" style="width : 70%">
                    <thead>
                      <tr>
                        <th>Check</th>
                        <th>IMAGE</th>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Total</th>
                        <th><div class="allCheck">
   						<input type="checkbox" name="allCheck" id="allCheck" /><label for="allCheck">모두 선택</label> 
  							<script>
								$("#allCheck").click(function(){
 								var chk = $("#allCheck").prop("checked");
 								if(chk) {
 									$(".chBox").prop("checked", true);
 								} else {
  									$(".chBox").prop("checked", false);
 									}
								});
								</script>
  					</div>
  					</th>
  					<th>
  					<div class="delBtn">
   						<button type="button" class="selectDelete_btn">선택 삭제</button> 
   						<script>
						   $(".selectDelete_btn").click(function(){
						    var confirm_val = confirm("정말 삭제하시겠습니까?");
						    
						    if(confirm_val) {
						     var checkArr = new Array();
						     
						     $("input[class='chBox']:checked").each(function(){
						      checkArr.push($(this).attr("data-cartNum"));
						     });
						      
						     $.ajax({
						      url : "wishlist/delectwishlist",
						      type : "post",
						      data : { chbox : checkArr },
						      success : function(){
						    	  location.reload();
						      }
						     });
						    }   
						   });
						</script>
  					</div> 
  					</th>
                      	</tr>
                    </thead>
                    <tbody>    
                    
                    	
                    	


                   <c:forEach items='${selectCart}' var='CartDTO' varStatus = "status" >  <!-- forEach문 -->
                      <tr>
                        <td>
                        	<div class="checkBox">
  							<input type="checkbox" name="chBox" class="chBox" data-cartNum="${cart[status.index].wish_id}"/>
  							<script>
 							$(".chBox").click(function(){
 							$("#allCheck").prop("checked", false);
 							});
						</script>
  							</div>
  						</td> <!-- 삭제/체크 -->
                        <td><a href="#"><img src="resources/img/${CartDTO.img}" alt="img"></a></td> <!-- 상품이미지 -->
                        <td><a class="aa-cart-title" href="product/productdetail?product_id=${CartDTO.product_id}&product_cate=${CartDTO.product_cate}">${CartDTO.product_name}</a></td> <!-- 상품명 -->
                        <td>${CartDTO.product_price}</td> <!-- 개당 가격 -->
                        <td><!-- 총계 --></td> 
                        <td>
                        <div class="delete">
					    		<button type="button" class="delete_${cart[status.index].wish_id}_btn" data-cartNum="${cart[status.index].wish_id}">삭제</button>
					    		<script>
					    		 $(".delete_${cart[status.index].wish_id}_btn").click(function(){
								    var confirm_val = confirm("정말 삭제하시겠습니까?");
								    
								    if(confirm_val) {
								     var checkArr = new Array();
								     
								     checkArr.push($(this).attr("data-cartNum"));
								                
								     $.ajax({
								      url : "wishlist/delectwishlist",
								      type : "post",
								      data : { chbox : checkArr },
								      success : function(result){
								    	
								    	  location.reload();
								      }
								     });
								    }   
								   });
								</script>
					  		</div>
					  		</td>
                        </c:forEach>
                        
                      </tr>
                      </tbody>
                  </table>
                </div>
             </form>
             
             <!-- 총 합계 계산 -->
             
 </section>
            </div>
    
                </main>
                <footer class="py-4 bg-light mt-auto">
               
                </footer>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>
