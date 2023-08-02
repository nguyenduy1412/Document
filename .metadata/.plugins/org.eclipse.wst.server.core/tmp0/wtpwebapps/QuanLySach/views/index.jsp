<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<body>
	<%@ include file="menu.jsp"%>
	<main class="bg-main">

		<div class="container">
			<div class="row ">
				<div class="col-lg-3 bg-white border-right">
					<h2 class="m-3">Danh mục</h2>
					<ul class="list-unstyled pl-3">
						<c:forEach items="${ listCategory}" var="category">
							<li><a
								href="${pageContext.request.contextPath}/listBook/${category.categoryId }">${category.categoryName}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="col-lg-9 bg-white">
					<div class="img-banner">
						<div class="owl-carousel owl-theme w-100">
							<c:forEach items="${listBanner}" var="banner">
								<div class="item">
									<a href=""><img
										src="${pageContext.request.contextPath}/<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${banner.bannerImg}"
										alt="" class="w-100" height="377px"></a>
								</div>
							</c:forEach>
						</div>

					</div>
					<div class="sachmoi pt-5">
						<h2>Sách mới</h2>
						<hr>
						<br>
						<div class="listsachmoi">
							<div class="row">
								<c:forEach items="${listBook}" var="book" varStatus="loop">
									<div class="col-lg-3 sach">
										<div class="card p-2">
											<img class="imgbook"
												src="${pageContext.request.contextPath}/<c:url value="uploads"/>/${pageContext.request.contextPath}/recources/images/${book.img}"
												alt="">
											<div class="">
												<div class="bookname">${book.bookName }</div>
												<div class="tacgia">${book.author }</div>
												<div
													class="d-flex justify-content-between align-items-center">
													<div class="gia">
														<fmt:formatNumber type="number" maxFractionDigits="3"
															value="${book.price}" />
														đ
													</div>
													<div class="icon-cart">
														<a
															href="addCart?bookId=${book.bookId}&cartId=${cart.cartId}"
															class="btn btn-primary add-cart"><i
															class="fa-solid fa-cart-shopping"></i></a>
													</div>
												</div>

											</div>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>
					</div>
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<li class="page-item ${p.curentPage == 1 ? 'disabled' : '' } "><a
								class="page-link" href="?page=${p.curentPage -1}">Previous</a></li>
							<c:forEach items="${total }" var="i">
								<li class="page-item ${p.curentPage == i ? 'active' : '' } "><a
									class="page-link" href="?page=${i }">${i }</a></li>
							</c:forEach>
							<li
								class="page-item ${p.curentPage == total.size() ? 'disabled' : '' } "><a
								class="page-link" href="?page=${p.curentPage +1}">Next</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</main>
	<c:if test="${empty cart}">
		<script type="text/javascript">
			$('.add-cart').attr("href", "customer?name=${acc.userName}");
		</script>
	</c:if>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->

	<script
		src="${pageContext.request.contextPath}/<c:url value="resoucres"/>/OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
	<script type="text/javascript">
	$('.owl-carousel').owlCarousel({
	    items: 1,
	    loop: true,
	    autoplay: true,
	    autoplayTimeout: 3000,
	    
	});</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.${pageContext.request.contextPath}/recources/js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/${pageContext.request.contextPath}/recources/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>