<%@ page pageEncoding="utf-8"%>
<div class="col-md-3 span_1_of_right">
	<section class="sky-form">
		<div class="product_right">
			<h3 class="m_2">Categories</h3>
			<select class="dropdown" tabindex="10"
				data-settings='{"wrapperClass":"metro"}'>
				<option value="0">Men's</option>
				<option value="1">Tempor</option>
				<option value="2">Congue</option>
				<option value="3">Mazim </option>
				<option value="4">Mutationem</option>
				<option value="5">Hendrerit </option>
			</select> <label class="me"></label> <select class="dropdown" tabindex="50"
				data-settings='{"wrapperClass":"metro"}'>
				<option value="1">Women's</option>
				<option value="2">Sub Category1</option>
				<option value="3">Sub Category2</option>
				<option value="4">Sub Category3</option>
			</select> <label class="wom"></label> <select class="dropdown" tabindex="8"
				data-settings='{"wrapperClass":"metro"}'>
				<option value="1">Kids</option>
				<option value="2">Sub Category1</option>
				<option value="3">Sub Category2</option>
				<option value="4">Sub Category3</option>
			</select> <label class="kid"></label> <select class="dropdown" tabindex="8"
				data-settings='{"wrapperClass":"metro"}'>
				<option value="1">Sports</option>
				<option value="2">Sub Category1</option>
				<option value="3">Sub Category2</option>
				<option value="4">Sub Category3</option>
			</select> <label class="spo"></label>
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

	<div class="sellers">
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
	</div>

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
