<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/${pageContext.request.contextPath}/recources/css/all.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/css/bootstrap.min.css" >
  </head>
  <body>
    <nav class="navbar navbar-expand-sm navbar-light bg-light">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
            aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavId">
          <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Danh mục</a>
              <div class="dropdown-menu" aria-labelledby="dropdownId">
                <a class="dropdown-item" href="account">Tài khoản</a>
                <a class="dropdown-item" href="category">Thể loại</a>
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
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <form:form action="createCategory" method="POST" modelAttribute="category">
					  <div class="form-group">
					    <label for="exampleInputEmail1">Category Name</label>
					    <form:input type="text" path="categoryName" class="form-control"/>
					    
					  </div>
					  <div class="form-group">
						<div>
							<label for="">Status:</label>
						</div>
						<div class="form-check-inline">
							<label class="form-check-label">
							  <form:radiobutton class="form-check-input" path="categoryStatus" value="1" checked="checked" />Active
							</label>
						  </div>
						  <div class="form-check-inline">
							<label class="form-check-label">
							  <form:radiobutton class="form-check-input" path="categoryStatus" value="0" />Hidden
							</label>
						  </div>	
					  </div>				 
					  <button type="submit" class="btn btn-primary">Add</button>
				</form:form>
            </div>
        </div>
    </div>

</body>
</html>