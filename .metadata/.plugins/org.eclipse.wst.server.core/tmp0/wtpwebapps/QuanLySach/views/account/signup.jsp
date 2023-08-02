<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
  <body >
	<%@ include file="../menu.jsp" %>
    <main class="color-form p-5 bg-light">
    <div class="alerts">
    <c:if test ="${!empty error}">
			<div class="alert alert-danger alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <strong>${error}!</strong>
			</div>
			</c:if>
    </div>
      <div class="form-login ">
          <h3 class="text-center">Thông tin đăng ký</h3>
          <form:form action="register" method="post" modelAttribute="acc">
              <div class="form-group">
                  <form:input type="text" placeholder="Tên đăng nhập" class="form-control " path="userName"/>   
                  <form:errors path="userName" class="text-danger"></form:errors>
              </div>
              
              <div class="form-group">
                  <form:input type="password" placeholder="Nhập mật khẩu" class="form-control" path="passWord" id="pass"/>
                  <i class="fa-solid fa-eye-slash mat" onclick="showHide()"id="mat"></i>
                  <form:errors path="passWord" class="text-danger"></form:errors>
              </div>
              <div class="form-group">
                  <input type="password" placeholder="Nhập lại mật khẩu" class="form-control"id="pass1"/>
                  <i class="fa-solid fa-eye-slash mat" onclick="showHide1()"id="mat1"></i>
                  <div class="err"><span id="err_pass1"></span></div>
              </div>
              <input type="checkbox" checked> Bằng việc đăng ký, bạn đồng ý về chính sách và điều kiện bảo vệ dữ liệu cá nhân.
              <button type="submit" class="btn btn-success btn-dangky">Đăng ký</button>
             
          </form:form>
        
  </main>
</div>
      <script>
        function showHide()
		{
		    var pass= document.getElementById('pass');
		    var mat=document.getElementById('mat');
		    if(pass.type=='password')
		    {
		        pass.type='text';
		        mat.classList.remove('fa-eye-slash');
		        mat.classList.add('fa-eye');
		    }
		    else
		    {
		        pass.type='password';
		        mat.classList.remove('fa-eye');
		        mat.classList.add('fa-eye-slash');
		    }
		}
		function showHide1()
		{
		    var pass= document.getElementById('pass1');
		    var mat=document.getElementById('mat1');
		    if(pass.type=='password')
		    {
		        pass.type='text';
		        mat.classList.remove('fa-eye-slash');
		        mat.classList.add('fa-eye');
		    }
		    else
		    {
		        pass.type='password';
		        mat.classList.remove('fa-eye');
		        mat.classList.add('fa-eye-slash');
		    }
		}
      </script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.${pageContext.request.contextPath}/recources/js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>    