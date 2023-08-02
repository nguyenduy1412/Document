<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<%@ include file="../style.jsp" %>
  <body>
     <%@ include file="../menu.jsp" %>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
           <c:if test ="${!empty error}">
			<div class="alert alert-danger alert-dismissible">
			  <button type="button" class="close" data-dismiss="alert">&times;</button>
			  <strong>${error}!</strong>
			</div>
			</c:if>
                <form:form action="../updateBanner" method="POST" modelAttribute="banner" enctype="multipart/form-data">
					  <form:input type="hidden" path="bannerId" class="form-control"/>
					  <form:input type="hidden" path="bannerImg" class="form-control"/>
					<div class="form-group">
					    <label for="exampleInputEmail1">Ảnh</label>
					    <input type="file" name="fileImage" class="form-control">
					    <img alt="" src="${pageContext.request.contextPath}/<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${banner.bannerImg}" width="100px">
					  </div>
					  <button type="submit" class="btn btn-primary">Update</button>
				</form:form>
            </div>
        </div>
    </div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.${pageContext.request.contextPath}/recources/js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>