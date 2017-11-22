<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<div class="col-md-3 span_1_of_right">
	<section class="sky-form">
		<div class="product_right">
			<h3 class="m_2"><s:message code="sidebar.categories"/></h3>
			<div class="list-group">
  				<a href="#" class="list-group-item list-group-item-success"><s:message code="nav.men"/></a>
  				<a href="#" class="list-group-item list-group-item-info"><s:message code="nav.women"/></a>
  				<a href="#" class="list-group-item list-group-item-warning"><s:message code="nav.kid"/></a>
  				<a href="#" class="list-group-item list-group-item-danger"><s:message code="nav.sport"/></a>
			</div>
		</div>

	</section>

	<div class="sellers">
		<h3 class="m_2">Best sellers</h3>
		<div class="best">
			<div class="icon">
				<img src="assets/images/sh.jpg" class="img-responsive" alt="" />
			</div>
			<div class="data">
				<h4>
					<a href="#">Sample Item Title Goes Here</a>
				</h4>
				<p>$120.00</p>
				<h5>$120.00</h5>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="best">
			<div class="icon">
				<img src="assets/images/sh.jpg" class="img-responsive" alt="" />
			</div>
			<div class="data">
				<h4>
					<a href="#">Sample Item Title Goes Here</a>
				</h4>
				<p>$120.00</p>
				<h5>$120.00</h5>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="best">
			<div class="icon">
				<img src="assets/images/sh.jpg" class="img-responsive" alt="" />
			</div>
			<div class="data">
				<h4>
					<a href="#">Sample Item Title Goes Here</a>
				</h4>
				<p>$120.00</p>
				<h5>$120.00</h5>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>

	<!-- <div class="sellers">
		<h3 class="m_2">Tags</h3>
		<div class="tags">
			<ul>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
				<li><a href="#">Tag,</a></li>
			</ul>
		</div>
	</div> -->

	<section class="sky-form">
		<div class="sellers">
			<h3 class="m_2">Special Offers</h3>
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="tittle">
								<img src="assets/images/shoe.jpg" class="img-responsive" alt="" />
								<h6>Item Title Here</h6>
								<p>Lorem ipsum dolor sit amet,</p>
								<p>Lorem ipsum dolor sit amet,</p>
								<p>Lorem ipsum dolor sit amet,</p>
								<a class="show1" href="#">SHOW ME MORE</a>
							</div>
						</li>
						<li>
							<div class="tittle">
								<img src="assets/images/shoe.jpg" class="img-responsive" alt="" />
								<h6>Item Title Here</h6>
								<p>Lorem ipsum dolor sit amet,</p>
								<p>Lorem ipsum dolor sit amet,</p>
								<p>Lorem ipsum dolor sit amet,</p>
								<a class="show1" href="#">SHOW ME MORE</a>
							</div>
						</li>
						<li>
							<div class="tittle">
								<img src="assets/images/shoe.jpg" class="img-responsive" alt="" />
								<h6>Item Title Here</h6>
								<p>Lorem ipsum dolor sit amet,</p>
								<p>Lorem ipsum dolor sit amet,</p>
								<p>Lorem ipsum dolor sit amet,</p>
								<a class="show1" href="#">SHOW ME MORE</a>
							</div>
						</li>
						<li>
							<div class="tittle">
								<img src="assets/images/shoe.jpg" class="img-responsive" alt="" />
								<h6>Item Title Here</h6>
								<p>Lorem ipsum dolor sit amet,</p>
								<p>Lorem ipsum dolor sit amet,</p>
								<p>Lorem ipsum dolor sit amet,</p>
								<a class="show1" href="#">SHOW ME MORE</a>
							</div>
						</li>
					</ul>
				</div>
			</section>

			<!-- FlexSlider -->
			<script src="assets/js/jquery.flexslider.js"></script>
			<script>
				/*$(function(){
				  SyntaxHighlighter.all();
				});*/
				$(window).load(function(){
				  $('.flexslider').flexslider({
					animation: "slide",
					start: function(slider){
					  $('body').removeClass('loading');
					}
				  });
				});
		  	</script>
			<!-- FlexSlider -->
		</div>
	</section>
</div>
<div class="clearfix"></div>
