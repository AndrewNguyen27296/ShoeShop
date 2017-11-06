<%@ page pageEncoding="utf-8"%>
<div class="col-md-9">
	<div class="biseller-info">
		<h3 class="new-models">featured products</h3>
		<ul id="flexiselDemo3">
			<li>
				<div class="biseller-column">
					<img src="assets/images/1.jpg" class="img-responsive" alt=""
						class="veiw-img"> <a href="#"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>

				</div>
			</li>
			<li>
				<div class="biseller-column">
					<img src="assets/images/2.jpg" class="img-responsive" alt=""
						class="veiw-img"> <a href="#"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>

				</div>
			</li>

			<li>
				<div class="biseller-column">
					<img src="assets/images/3.jpg" class="img-responsive" alt=""
						class="veiw-img"> <a href="#"><i class="new"></i></a>
					<div class="biseller-name">
						<h4>Sample Item Title</h4>
						<p>$99.99</p>
					</div>

				</div>
			</li>

		</ul>

	</div>

	<script>
		 $(window).load(function() {
			$("#flexiselDemo3").flexisel({
				visibleItems: 3,
				animationSpeed: 1000,
				autoPlay: false,
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

	<div class="best-seller">

		<div class="biseller-info">
			<h3 class="new-models">latest products</h3>
			<ul id="flexiselDemo1">
				<li>
					<div class="biseller-column">
						<img src="assets/images/ss6.jpg" class="img-responsive" alt=""> <a
							href="#"><i class="new"></i></a>
						<div class="biseller-name">
							<h4>Sample Item Title</h4>
							<p>$99.99</p>
						</div>

					</div>
				</li>
				<li>
					<div class="biseller-column">
						<img src="assets/images/ss4.jpg" class="img-responsive" alt=""> <a
							href="#"><i class="new"></i></a>
						<div class="biseller-name">
							<h4>Sample Item Title</h4>
							<p>$99.99</p>
						</div>

					</div>
				</li>
				<li>
					<div class="biseller-column">
						<img src="assets/images/ss5.jpg" class="img-responsive" alt=""> <a
							href="#"><i class="new"></i></a>
						<div class="biseller-name">
							<h4>Sample Item Title</h4>
							<p>$99.99</p>
						</div>

					</div>
				</li>

			</ul>
		</div>

	</div>
	<script>
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
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
	<div class="best-seller">

		<div class="biseller-info">

			<ul id="flexiselDemo5">
				<li>
					<div class="biseller-column1">
						<img src="assets/images/ss3.jpg" class="img-responsive" alt=""> <a
							href="#"><i class="new"></i></a>
						<div class="biseller-name">
							<h4>Sample Item Title</h4>
							<p>$99.99</p>
						</div>
					</div>
				</li>
				<li>
					<div class="biseller-column1">
						<img src="assets/images/ss1.jpg" class="img-responsive" alt=""> <a
							href="#"><i class="new"></i></a>
						<div class="biseller-name">
							<h4>Sample Item Title</h4>
							<p>$99.99</p>
						</div>

					</div>
				</li>
				<li>
					<div class="biseller-column1">
						<img src="assets/images/ss2.jpg" class="img-responsive" alt=""> <a
							href="#"><i class="new"></i></a>
						<div class="biseller-name">
							<h4>Sample Item Title</h4>
							<p>$99.99</p>
						</div>

					</div>
				</li>

			</ul>
		</div>

	</div>
	<script src="assets/js/jquery.flexisel.js"></script>
	<div class="clearfix"></div>
</div>
