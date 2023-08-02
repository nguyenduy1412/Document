<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/${pageContext.request.contextPath}/recources/css/all.min.css">

   	<style >
   		      .form-login{
         width: 50%;
    margin: auto;
    background-color: #fff;
    padding: 50px;
    border-radius: 10px;
      }
      .color-form{
        background-color: white;
       
        margin: auto;
      }
      .mat{
      position: absolute;
      right: 20px;
      top:13px;
      cursor: pointer;
      }
      .form-group{
	    margin-top: 20px;
	    position: relative;
		}
	.btn-dangky{
	    margin-top: 20px;
	    width: 100%;
	    background-color: rgb(66,183,42);
	    border: none;
	    height: 50px;
	    border-radius: 5px;
	    
	    font-weight: bold;
	    font-size: 18px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}
	.btn-dangky a{
	    color: #fff;
	    text-decoration: none;
	}
   	</style>
  </head>
  <body >
	<nav class="navbar navbar-expand-sm navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
            aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danh mục</a>
              <div class="dropdown-menu" aria-labelledby="dropdownId">
                <a class="dropdown-item" href="account">Tài khoản</a>
                <a class="dropdown-item" href="#">Action 2</a>
              </div>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
          <ul class="navbar-nav ">
            <li class="nav-item">
                <a class="nav-link"><i class="fa-solid fa-cart-shopping"></i></a>
                
            </li>
            <li class="nav-item">
                <a class="nav-link" href="dangnhap"><i class="fa-solid fa-user"></i> <span class="text" id="user"> Đăng nhập</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="dangky"><i class="fa-solid fa-user-plus"></i> <span class="text"> Đăng ký</span></a>
            </li> 
        </ul>
        </div>
      </nav>
    <main class="color-form p-5 bg-light">
    <c:if test ="${!empty error}">
			<div class="alert alert-danger alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <strong>${error}!</strong>
			</div>
			</c:if>
      <div class="form-login ">
          <h3 class="text-center">Thông tin đăng ký</h3>
          <form:form action="addAccount" method="post" modelAttribute="acc">
              <div class="form-group">
                  <form:input type="text" placeholder="Tên đăng nhập" class="form-control " path="userName"/>   
                  <div class="err"><span id="err_phone"></span></div>
              </div>
              
              <div class="form-group">
                  <form:input type="password" placeholder="Nhập mật khẩu" class="form-control" path="passWord" id="pass"/>
                  <i class="fa-solid fa-eye-slash mat" onclick="showHide()"id="mat"></i>
                  <div class="err"><span id="err_pass"></span></div>
              </div>
              <div class="form-group">
                  <input type="password" placeholder="Nhập lại mật khẩu" class="form-control"id="pass1"/>
                  <i class="fa-solid fa-eye-slash mat" onclick="showHide1()"id="mat1"></i>
                  <div class="err"><span id="err_pass1"></span></div>
              </div>
              <input type="checkbox"> Bằng việc đăng ký, bạn đồng ý về chính sách và điều kiện bảo vệ dữ liệu cá nhân.
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