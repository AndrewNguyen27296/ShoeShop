<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>

<div class="col-md-9">
	<!-- 6 Latest Product / shuffle  -->
	<div class="biseller-info">
		<h4 class="new-models" style="font-size: 2em;">
			<s:message code="index.latest" />
		</h4>
		<ul id="flexiselDemo3">
			<c:forEach var="l" items="${latests}">
				<li>
					<div class="biseller-column">
					<a href="detail/${l.id}">
						<img src="assets/upload/products/files/${l.productImages[0].image}" class="img-responsive" alt="" class="veiw-img"> 
					</a>	
						<a href="#"><i class="new"></i></a>
						<div class="biseller-name">
							<h4>${l.name}</h4>
							<p>
								
								<f:formatNumber value="${l.price}" maxFractionDigits="0"></f:formatNumber>
								VNĐ
							</p>
						</div>
					</div>
				</li>
			</c:forEach>
		</ul>
	</div>
	<!-- end 6 Latest Product / shuffle  -->

	<!-- slide show Latest Product -->
	<script>
		$(window).load(function() {
			$("#flexiselDemo3").flexisel({
				visibleItems : 3,
				animationSpeed : 1000,
				autoPlay : true,
				autoPlaySpeed : 3000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 2
					},
					tablet : {
						changePoint : 768,
						visibleItems : 3
					}
				}
			});
		});
	</script>
	<script src="assets/js/jquery.flexisel.js"></script>
	<!-- end slide show Latest Product -->


	<!-- 12 Relevant Product 1 / random -->
	<div class="best-seller">
		<div class="biseller-info">
			<h4 class="new-models" style="font-size: 2em;">
				<s:message code="index.relate" />
			</h4>
			<ul id="flexiselDemo1">
				<c:forEach items="${random}" var="r">
					<li>
						<div class="biseller-column">
							<img
								src="assets/upload/products/files/${r.productImages[0].image}"
								class="img-responsive" alt="" class="veiw-img"> <a
								href="#"><i class="new"></i></a>
							<div class="biseller-name">
								<h4>${r.name}</h4>
								<p>
									<f:formatNumber value="${r.price}" maxFractionDigits="0"></f:formatNumber>
									VNĐ
								</p>
							</div>

						</div>
					</li>
				</c:forEach>

			</ul>
		</div>

	</div>
	<!-- end 12 Relevant Product 1 / random -->


	<!-- slide show Relevant Product 1 -->
	<script>
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems : 3,
				animationSpeed : 1000,
				autoPlay : true,
				autoPlaySpeed : 3000,
				pauseOnHover : true,
				enableResponsiveBreakpoints : true,
				responsiveBreakpoints : {
					portrait : {
						changePoint : 480,
						visibleItems : 1
					},
					landscape : {
						changePoint : 640,
						visibleItems : 2
					},
					tablet : {
						changePoint : 768,
						visibleItems : 3
					}
				}
			});
	
		});
	</script>
	<!-- end slide show Relevant Product 1 -->


	<!-- 12 Relevant Product 2 / random -->
	<div class="best-seller">

		<div class="biseller-info">

			<ul id="flexiselDemo5">
				<c:forEach items="${random2}" var="r2">
					<li>
						<div class="biseller-column1">
							<img
								src="assets/upload/products/files/${r2.productImages[0].image}"
								class="img-responsive" alt="" class="veiw-img"> <a
								href="#"><i class="new"></i></a>
							<div class="biseller-name">
								<h4>${r2.name}</h4>
								<p>
									<f:formatNumber value="${r2.price}" maxFractionDigits="0"></f:formatNumber>
									VNĐ
								</p>
							</div>
						</div>
					</li>
				</c:forEach>

			</ul>
		</div>
	</div>
	<!-- end 12 Relevant Product 1 / random -->

	<!-- slide show Relevant Product 2 -->
	<script>
		 $(window).load(function() {
			$("#flexiselDemo5").flexisel({
				visibleItems: 3,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
   	</script>
	<script src="assets/js/jquery.flexisel.js"></script>
	<!-- end slide show Relevant Product 1 -->

	<div class="clearfix"></div>
</div>
