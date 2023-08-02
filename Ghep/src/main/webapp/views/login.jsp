<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
  <head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        .bg-body{
            background-color: rgb(239,243,244);
        }
        .bg-while{
            background-color: #fff;
        }
  
        #imglogin{
            width: 200px;
        }
        .text-drark{
            color:  #217093;
        }
        .inputlogin{
            height: 50px;
            border: 3px solid  #217093;
            font-weight: bold;
        }
        .boder-dark{
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            width: 15px;
            height: 15px;
            border: 2px solid  #217093;
        }
        .boder-dark:checked {
            
  /* Định dạng màu nền khi ô đánh dấu được chọn */
            background-color:  #217093; 
  /* Bạn cũng có thể thay đổi màu viền khi ô đánh dấu được chọn bằng cách thêm thuộc tính border-color */
        }
        .btnlogin{
            background-color: rgb(78,184,221);
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            width: 100%;
            height: 50px;
        }
        #check{
            border: 2px solid  #217093;
            width: 20px;
            height: 20px;
            text-align: center;
            cursor: pointer;
            color: #217093;
            
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
</head>
  <body class="bg-body">
    <div class="container">
        <div class="row  d-flex justify-content-center">
            <div class="col-lg-4 bg-while p-5">
                <form name="loginForm" action="<c:url value="j_spring_security_login" />" method="POST">
                    <div class="d-flex justify-content-center">
                        <img src="${pageContext.request.contextPath}/recources/images/logologin.png" id="imglogin" alt="">
                    </div>
                    <div class="form-group">
                        <label class="font-weight-bold text-drark ">Tên đăng nhập</label>
                        <input type="text" class="form-control inputlogin" name="username" id="inputlogin" aria-describedby="emailHelpId" placeholder=""/>
                    </div>
                    <div class="form-group">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <label class="font-weight-bold text-drark ">Mật khẩu</label>
                            </div>
                            <div class="d-flex">
                                <div class="d-flex align-items-center" id="check">
                                    <i class="fa-solid fa-check d-none"></i>
                                </div>
                                <span class="font-weight-bold text-drark"> Show</span>
                            </div>
                            
                        </div>
                        <input type="password" class="form-control inputlogin" name="password" id="passlogin" aria-describedby="emailHelpId" placeholder=""/>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <button type="submit" class="btn btnlogin">Log in</button>
                </form>
                
            </div>
        </div>
    </div>
    <script>
        $(document).ready(function() {
            $("#check").on("click", function() {
            $(this).find(".fa-check").toggleClass("d-none");
            var pass=$('#passlogin');
            if(pass.attr("type") === "password"){
                pass.attr("type", "text");
                $('#imglogin').attr("src","${pageContext.request.contextPath}/recources/images/logologin2.png")
            }
            else{
                pass.attr("type", "password");
                $('#imglogin').attr("src","${pageContext.request.contextPath}/recources/images/logologin.png")
            }
        });
        });
    </script>
    <script>
        const input = document.getElementById("inputlogin");
        const image = document.getElementById("imglogin");
        const pass = document.getElementById("passlogin");
        input.addEventListener("focus", function () {
        // Thay đổi đường dẫn của hình ảnh khi ô input được focus
        image.src = "${pageContext.request.contextPath}/recources/images/logologin3.png";
        });
        pass.addEventListener("focus", function () {
        // Thay đổi đường dẫn của hình ảnh khi ô input được focus
        image.src = "${pageContext.request.contextPath}/recources/images/logologin1.png";
        });
        input.addEventListener("blur", function () {
        // Khi người dùng không focus nữa, hình ảnh sẽ trở lại ban đầu
        image.src = "${pageContext.request.contextPath}/recources/images/logologin.png";
        });
        pass.addEventListener("blur", function () {
        // Khi người dùng không focus nữa, hình ảnh sẽ trở lại ban đầu
        image.src = "${pageContext.request.contextPath}/recources/images/logologin.png";
        });
    </script>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>