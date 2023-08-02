<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/${pageContext.request.contextPath}/recources/css/all.min.css">
    <style type="text/css">
    	.namxb{
    		width: 15%;
    	}
    	.theloai{
    	width: 10%;
    	}
    </style>
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
                <a class="dropdown-item" href="category">Thể loại </a>
                <a class="dropdown-item" href="book">Sách</a>
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
    <div class="row  justify-content-center">
        <div class="col-lg-12">
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
        <a class="btn btn-success" href="addBook">Thêm mới</a>
            <table class="table">
              <thead>
                <tr>
                  <th>STT</th>
                  <th>Tên Sách</th>
                  <th>Tác giả</th>
                  <th class="namxb">Nhà xuất bản</th>
                  <th class="namxb">Năm xuất bản</th>
                  <th class="theloai">Thể loại </th>
                  <th>Giá</th>
                  <th>Ảnh</th>
                  <th></th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
	              <c:forEach items="${list}" var="b" varStatus="loop">
	               <tr>
	                  <td scope="row">${loop.count} </td>
	                  <td>${b.bookName}</td>
	                  <td>${b.author}</td>
	                  <td>${b.publisher}</td>
	                  <td>${b.publicationYear}</td>
	                  <td>${b.category.categoryName}</td>
	                  <td>${b.price}</td>
	                  <td><img alt="" src="<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${b.img}" width="100px" /></td>
	                  <td><a href="deleteBook/${b.bookId }" class="btn btn-danger">Delete</a></td>
	                  <td><a href="editBook/${b.bookId}" class="btn btn-primary">Update</a></td>
	                </tr>
	              </c:forEach>
              </tbody>
            </table>
        </div>
      </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.${pageContext.request.contextPath}/recources/js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>