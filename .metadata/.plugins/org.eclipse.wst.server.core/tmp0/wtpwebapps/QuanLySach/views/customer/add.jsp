<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
  <body class="bg-header">
      <%@ include file="../menu.jsp" %>
      <div class="container p-5">
        <div class="row justify-content-center ">
            <div class="col-lg-8 bg-white p-5 ">
            	<c:if test ="${!empty success}">
			<div class="alert alert-success alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <strong>${success}!</strong>
			</div>
			</c:if>
			<c:if test ="${!empty error}">
			<div class="alert alert-danger alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <strong>${error}!</strong>
			</div>
			</c:if>
               <form:form action="${ empty customer.customerId ? 'insertCustomer' :'updateCustomer' } " method="POST" modelAttribute="customer" enctype="multipart/form-data">
               <div class="d-flex align-items-center">
            		 <div class="imgCustomer">
            			<div class="imgCus mb-3" >
				            <img id="imgCus"  src="${pageContext.request.contextPath}/<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${customer.imgCustomer}" alt="" class="w-100">
				        </div>
				        <input style="display: none;" type="file" id="imageInput" name="fileImage" >
				        <button type="button" class="btn btn-success" id="chooseButton">Chọn ảnh</button>
            		</div>
	            	<div class="contentCustomer">
	            		<form:input type="hidden" path="customerId" class="form-control"/>
	            		<form:input type="hidden" path="imgCustomer" class="form-control"/>
					  <div class="form-group d-flex justify-content-between align-items-center">
					    <label for="exampleInputEmail1">Họ và tên</label>
					    <form:input type="text" path="customerName" class="form-control w-50"/>
					  </div>
					  <div class="form-group d-flex justify-content-between align-items-center">
					    <label for="exampleInputEmail1">Địa chỉ</label>
					    <form:input type="text" path="customerAddress" class="form-control w-50"/>		    
					  </div>
					  <div class="form-group d-flex justify-content-between align-items-center">
					    <label for="exampleInputEmail1">Số điện thoại</label>
					    <form:input type="text" path="phoneNumber" class="form-control w-50"/>		    
					  </div>
					  <div class="form-group d-flex justify-content-between align-items-center">
					  <label for="exampleInputEmail1">Tên đăng nhập</label>
				        <form:input type="text" path="account.userName" class="form-control w-50 " readonly="true"  value="${acc.userName}" />
				      </div>
				      <div class="form-group d-flex justify-content-between align-items-center">
					  <label for="exampleInputEmail1">Mật khẩu</label>
				        <form:input type="password" path="account.passWord" class="form-control w-50" value="${acc.passWord}" />
				      </div>
	            	</div>
            	</div>
					  <button type="submit" class="btn btn-primary">Lưu</button>
				</form:form>
            </div>
        </div>
    </div>
			  
	  <script>
        $(document).ready(function() {
          $('#chooseButton').click(function() {
            $('#imageInput').click();
          });
        
          $('#imageInput').change(function() {
            var file = this.files[0];
            if (file) {
              var reader = new FileReader();
              reader.onload = function(e) {
                $('#imgCus').attr('src', e.target.result);
                $('#imgCus').show();
              };
              reader.readAsDataURL(file);
            }
          });
        });
        </script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.${pageContext.request.contextPath}/recources/js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>