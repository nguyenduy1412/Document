<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<body class="bg-body">
<%@ include file="../menu.jsp" %>
	<div class="container">
       <div class="row bg-white">
       <c:forEach items="${listDetailCart}" var="detail" varStatus="loop">
           <div class="border w-100 d-flex align-items-center justify-content-between pt-2 pr-5 pb-2 mt-3">
               <div class="d-flex w-50 justify-content-between align-items-center">
               		
                   <input type="checkbox" name="" class="detailcheck">
                   <img src="${pageContext.request.contextPath}/<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${detail.book.img}" alt="" width="100px">
                   <div class="">
                       <a href="" class="font-weight-bold">${detail.book.bookName }</a><br>
                       <span class="text-success font-weight-bold">Tác giả:${detail.book.author} </span><br>
                       <span class="font-weight-light text-warning">Thể loại:${detail.book.category.categoryName}</span>
                   </div>
               </div>        
              <div><fmt:formatNumber type="number" maxFractionDigits="3" value="${detail.sumMoney}" /> đ</div>
              <div>
              		<input type="hidden" value="${detail.detailCartId }">
                   <button class="btndown" >-</button>
                   <input class="text-center quantity" type="text"  name="quantity" value="${detail.quantity}" >
                   <button class="btnup">+</button>
              </div>
              <div>
                   <a href="" class="btn btn-danger">Xóa</a>
              </div>
           </div>
           </c:forEach>
       </div>  
        </div>
         <div class="thanhtoan sticky-bottom">
            <div class="pr-5">
                <span>Tổng thanh toán (9 sản phẩm ): <span class="detailcartprice">300000000đ</span> </span>
            </div>
            <div>
                <a href="" class="btn btn-primary">Mua hàng</a>
            </div>
        </div>
         <script>
            $(document).ready(function() {
            var inputValue;
            var detailCartId;
          	  $('.quantity').on('input', function(e) 
          		{
          		detailCartId=$(this).prev().prev().val();
          	      $(this).val($(this).val().replace(/[^0-9]/g, ''));
          	    }).on('blur', function() 
          	    {
          	      inputValue = $(this).val();
          	    }).on('keypress', function(e) 
          	    {
          	      if (e.which === 13) {
          	        e.preventDefault();
          	        $(this).blur();
          	      }
          	    }).on('blur', function() {
          	      redirectUpdate();
          	    });
        		function redirectUpdate() {
			        if (inputValue) {
			        	 window.location.href = 'detailCart?quantity='+inputValue+'&detailId='+detailCartId;
			        }
    			}
            $(".btnup").click(function() {
            	
            	var quantityInput = $(this).prev();
            	var detailCartId=quantityInput.prev().prev().val();
                var quantityValue = parseInt(quantityInput.val());
                quantityInput.val(quantityValue  +1);
                window.location.href = 'detailCart?quantity='+quantityInput.val()+'&detailId='+detailCartId;
            });
            $(".btndown").click(function() {
            	var detailCartId=prev().val();
            	var quantityInput = $(this).next();
                var quantityValue = parseInt(quantityInput.val());
                if (quantityValue > 0) {
                  quantityInput.val(quantityValue - 1);
                }
                window.location.href = 'detailCart?quantity='+quantityInput.val()+'&detailId='+detailCartId;
            });
	          
            window.addEventListener('scroll', function() {
                var footer = document.querySelector('.thanhtoan');
                var windowHeight = window.innerHeight; // Chiều cao cửa sổ trình duyệt
                var documentHeight = document.documentElement.scrollHeight; // Chiều cao toàn bộ nội dung trang web (bao gồm cả footer)
                var scrollPosition = window.scrollY; // Vị trí cuộn chuột hiện tại

                // Kiểm tra nếu cuộn chuột đến cuối trang web (hoặc gần cuối)
                if (scrollPosition + windowHeight >= documentHeight - 80) {
                  footer.classList.remove('sticky-bottom'); // Thêm lớp hidden để ẩn div footer
                } else {
                  footer.classList.add('sticky-bottom'); // Xóa lớp hidden để hiển thị div footer
                }
              });
            });
        </script>
</body>
</html>