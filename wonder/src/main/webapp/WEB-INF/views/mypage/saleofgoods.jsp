<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@include file="../include2/head.jsp" %>
<%@include file="../include2/menu.jsp" %>
<main id="content" class="content" role="main">


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<%@include file="../include2/head.jsp" %>


<div data-v-76574781="" class="container customer md">
	<%@include file="../include2/mypageMenubar.jsp" %>
            
       

 
  <!-- CART PAGE 상단 글자 -->
 <div data-v-88eb18f6="" data-v-0067a928="" class="content_title border">
       	<div data-v-88eb18f6="" class="title">
        <h2>판매내역</h2>
        <br>
        </div>
   </div>
  <!-- CART PAGE 상단 글자 -->

 <!-- Cart view section -->

                  <!-- 장바구니 표 -->
                  <table class="table" style="width:70%">
                    <thead>
                      <tr>
                        <th>Check</th>
                        <th>IMAGE</th>
                        <th>Product</th>
                        <th>Price</th>
                        
                      	</tr>
                    </thead>
                    <tbody>    
                   <c:forEach items='${selectCart}' var='CartDTO' varStatus = "status" >  <!-- forEach문 -->
                      <tr>
                        <td>
                        	<div class="checkBox">
  							<input type="checkbox" name="chBox" class="chBox" data-cartNum="${CartDTO.product_id}"/>
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
					    		<button type="button" class="delete_${CartDTO.product_id}_btn" data-cartNum="${CartDTO.product_id}">삭제</button>
					    		<script>
					    		 $(".delete_${CartDTO.product_id}_btn").click(function(){
								    var confirm_val = confirm("정말 삭제하시겠습니까?");
								    
								    if(confirm_val) {
								     var checkArr = new Array();
								     
								     checkArr.push($(this).attr("data-cartNum"));
								                
								     $.ajax({
								      url : "mypage/saleofgoods/delsalehistory",
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
               
                </main>
                <footer class="py-4 bg-light mt-auto">
               
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    </body>
</html>
