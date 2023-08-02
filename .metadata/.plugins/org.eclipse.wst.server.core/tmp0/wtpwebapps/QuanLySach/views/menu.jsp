  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <header class="bg-header sticky-top">
        <img src="${pageContext.request.contextPath}/<c:url value="resoucres"/>/img/imgheader.jpg" alt="" class="w-100">
        <nav class="navbar navbar-expand-sm navbar-light bg-header container">
           
            <div class="collapse navbar-collapse d-flex justify-content-between" id="collapsibleNavId">
                <div>
                    <ul class="navbar-nav  mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="${pageContext.request.contextPath}/"><i class="fa-solid fa-house-chimney"></i> <span >Trang chủ</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#"><i class="fa-solid fa-circle-question"></i><span > Giới thiệu</span></a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="#"><i class="fa-solid fa-newspaper"></i><span > Tin tức</span></a>
                        </li>
                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danh mục</a>
                            <div class="dropdown-menu" aria-labelledby="dropdownId">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/account">Tài khoản</a>
				                <a class="dropdown-item" href="${pageContext.request.contextPath}/category">Thể loại</a>
				                <a class="dropdown-item" href="${pageContext.request.contextPath}/book">Sách</a>
				                <a class="dropdown-item" href="${pageContext.request.contextPath}/banner">Banner</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div>
                    <div class="navbar-nav">
                      	<div class="nav-item active text">
                            <a class="nav-link text" href="${pageContext.request.contextPath}/dangnhap"><i class="fa-solid fa-user"></i>  Đăng nhập</a>
                        </div>
                        <div class="nav-item active text" >
                            <a class="nav-link" href="${pageContext.request.contextPath}/dangky"><i class="fa-solid fa-user-plus"></i>  Đăng ký</a>
                        </div>
                        <div  class="nav-item active d-none " id="user">
                          <a onclick="menu()" class="nav-link" ><img class="anhcustomer d-none" src="${pageContext.request.contextPath}/<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${customer.imgCustomer}" alt=""><i class="fa-solid fa-user icon-user"></i>  ${acc.userName}</a>
                        </div>
                        <div id="menuAcc">
                         <div class="cursor-pointer"><a class="text-dark" href="${pageContext.request.contextPath}/customer?name=${acc.userName}">Thông tin khách hàng</a></div>
                         <div class="cursor-pointer"><a class="text-dark" href="${pageContext.request.contextPath}/logout">Đăng xuất</a></div>
                        </div>
                    </div>
                </div> 
            </div>
        </nav>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
        
	   <nav class=" bg-nav">
            <div class="navbar navbar-expand-sm navbar-light container">
                <div class="collapse navbar-collapse justify-content-between">
                    <div class="nav-item active">
                            <img src="${pageContext.request.contextPath}/<c:url value="resoucres"/>/img/logo-new.png" alt="">
                    </div>
                    <div >
                        <form id="myForm" action="" method="post">
                      		<div class="d-flex">
	                        <input type="text" id="input" placeholder="Bạn cần tìm gì?" name="key"  class="form-control">
	                        <button type="submit" class="btn btn-success mr-2" onclick="updateFormAction('searchBook')"><i class="fa-solid fa-magnifying-glass"></i></button>
	                        <button type="submit" class="btn btn-warning mr-2" onclick="updateFormAction('google')">Google</button>
	                        <button type="submit" class="btn btn-danger mr-2" onclick="updateFormAction('youtube')">Youtube</button>
	                        <button type="submit" class="btn btn-primary" onclick="updateFormAction('facebook')">Facebook</button>
                     		</div>
                        </form>
                    </div>
                    <div class="d-flex align-items-center">
                        
                        <div class="phone">
                            <a href="">
                                <i class="fa-solid fa-phone-volume"></i>
                                <span > 0933 109 009</span>
                            </a>           
                        </div>
                        <div class="giohang ">
                            <a class="nav-link disabled "  onclick="giohang()"><i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a>
			                <div id="giohang" class="border">
				                <div class="d-flex justify-content-end p-2">
				                	<a href="viewCart?name=${cart.cartId }" class="btn bg-warning" >Xem giỏ hàng</a>	
				                </div>
				                <div class="listCart">
				                	<c:forEach items="${listDetailCart}" var="detail" varStatus="loop">
					                  <div class="d-flex justify-content-between align-items-center bg-transparent pl-3">
					                    <div class="anhsp"><img src="${pageContext.request.contextPath}/<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${detail.book.img}" alt=""width="100px"></div>
					                    <div class="detailsp pl-3">
					                      <div class="namehero">
					                     	<div class="mt-4">
					                        <h5 class="text-primary ">${detail.book.bookName }</h5>
					                        </div>
					                         <div>
					                          <span class="text-danger font-weight-bold pt-2">Tên tác giả: ${detail.book.author}</span>
					                         </div>
					                         <div class="mt-2">
					                          <span class="text-dark font-weight-bold ">Số lượng: ${detail.quantity}</span>
					                         </div>
					                        <div>
					                       	 <p class="text-warning pt-2">Giá: <fmt:formatNumber type="number" maxFractionDigits="3" value="${detail.sumMoney}" /> đ </p>				                        
					                     	 </div>    
					                    	</div>
					                      </div>
					                  </div>
					                  </c:forEach>
				                  <hr>
				                  <h5 class="p-3">Tổng tiền thanh toán: <fmt:formatNumber type="number" maxFractionDigits="3" value="${cart.sumMoney}"/> đ</h5>
				                </div>
				                
				            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <c:if test ="${!empty acc.userName}">
		  <script type="text/javascript">
			  $("#user").removeClass("d-none");
			  $(document).ready(function() {
	               $(".text").addClass("d-none");
	           });
			  $('.giohang').find('a').removeClass("disabled");
			  function menu(){
	           	$('#menuAcc').toggleClass('d-block');
	           }
		  </script>
	   </c:if>
	   <c:if test ="${!empty customer.imgCustomer}">
		<script type="text/javascript">
			  $('.icon-user').addClass('d-none');
			  $('.anhcustomer').removeClass('d-none');
		</script>
	   </c:if>
        <script>
        function giohang(){
        	$('#giohang').toggleClass('d-block');	
        }
        function updateFormAction(action) {
        	var inputValue = document.getElementById("input").value;
        	 if(action=='google'){
          	   event.preventDefault();
          	   
          	   var google = "https://www.google.com/search?q=" + inputValue;
                 window.open(google, "_blank");
             }
             if(action=='youtube'){
          	   event.preventDefault();
          	   var youtubeUrl = "https://www.youtube.com/results?search_query=" + inputValue;
                 window.open(youtubeUrl, "_blank");
             }
             if(action=='facebook'){
            	 event.preventDefault();
           	     var google = "https://www.facebook.com/search/top/?q=" + inputValue;
                 window.open(google, "_blank");
             }
           	var s= document.getElementById("myForm").action = "${pageContext.request.contextPath}/" + action;
        }
      </script>
    </header>