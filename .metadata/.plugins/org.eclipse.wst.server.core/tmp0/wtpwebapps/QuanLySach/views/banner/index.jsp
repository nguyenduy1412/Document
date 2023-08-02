<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../style.jsp" %>
  <body>
  <%@ include file="../menu.jsp" %>
    <div class="container">
    <div class="row  justify-content-center">
        <div class="col-lg-6">
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
        <a class="btn btn-success" href="addBanner">Thêm mới</a>
            <table class="table">
              <thead>
                <tr>
                  <th>STT</th>
                  <th>Ảnh</th>
                  <th></th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
	              <c:forEach items="${list}" var="c" varStatus="loop">
	               <tr>
	                  <td scope="row">${loop.count} </td>
	                  <td><img alt="" src="${pageContext.request.contextPath}/<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${c.bannerImg}" width="100px"> </td>
	                  <td><a href="deleteBanner/${c.bannerId }" class="btn btn-danger">Delete</a></td>
	                  <td><a href="editBanner/${c.bannerId}" class="btn btn-primary">Update</a></td>
	                </tr>
	              </c:forEach>
              </tbody>
            </table>
        </div>
      </div>
    </div>
     
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.${pageContext.request.contextPath}/recources/js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>