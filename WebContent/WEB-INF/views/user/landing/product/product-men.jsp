<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/menu_jquery.js"></script>
<link rel="stylesheet" href="css/etalage.css">
<script src="js/jquery.easydropdown.js"></script>
<script src="js/jquery.etalage.min.js"></script>
<script>
			jQuery(document).ready(function($){

				$('#etalage').etalage({
					thumb_image_width: 300,
					thumb_image_height: 400,
					source_image_width: 900,
					source_image_height: 1200,
					show_hint: true,
					click_callback: function(image_anchor, instance_id){
						alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
					}
				});

			});
		</script>

<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>

</head>
<body>
	<!-- content -->
<div class="container">
<div class="women_main">
<div class="col-md-3 span_1_of_right1">
				  <section  class="sky-form">
				   <div class="product_right">
     			<h3 class="m_2">Categories</h3>
     			    <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro"}'>
            			<option value="0">Men's</option>	
						<option value="1">Tempor</option>
						<option value="2">Congue</option>
						<option value="3">Mazim </option>
						<option value="4">Mutationem</option>
						<option value="5">Hendrerit </option>
		           </select>
				   <label class="me"></label>
				   <select class="dropdown" tabindex="50" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Women's</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="wom"></label>
				   <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Kids</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="kid"></label>
			       <select class="dropdown" tabindex="8" data-settings='{"wrapperClass":"metro"}'>
						<option value="1">Sports</option>
						<option value="2">Sub Category1</option>
						<option value="3">Sub Category2</option>
						<option value="4">Sub Category3</option>
			       </select>
				    <label class="spo"></label>
</div>
						
				</section>
                   	 
						<div class="sellers">
							<h3 class="m_2">Best sellers</h3>
								<div class="best">
									<div class="icon">
										<img src="images/sh.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="data">
										<h4><a href="#">Sample Item Title Goes Here</a></h4>
										<p>$120.00</p>
										<h5>$120.00</h5>
									</div>
									<div class="clearfix"></div>
								</div>	
								<div class="best">
									<div class="icon">
										<img src="images/sh.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="data">
									<h4><a href="#">Sample Item Title Goes Here</a></h4>
										<p>$120.00</p>
										<h5>$120.00</h5>
									</div>
									<div class="clearfix"></div>
								</div>	
								<div class="best">
									<div class="icon">
										<img src="images/sh.jpg" class="img-responsive" alt=""/>
									</div>
									<div class="data">
										<h4><a href="#">Sample Item Title Goes Here</a></h4>
										<p>$120.00</p>
										<h5>$120.00</h5>
									</div>
									<div class="clearfix"></div>
								</div>	
						 </div>
					 
		       <section  class="sky-form">
					<div class="sellers">
							<h3 class="m_2">Special Offers</h3>
							<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
									<div class="tittle">
										<img src="images/shoe.jpg" class="img-responsive" alt=""/>
										<h6>Item Title Here</h6>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<a class="show1" href="#">SHOW ME MORE</a>
									</div>
								</li>
								<li>
									<div class="tittle">
										<img src="images/shoe.jpg" class="img-responsive" alt=""/>
										<h6>Item Title Here</h6>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<a class="show1" href="#">SHOW ME MORE</a>
									</div>
								</li>
								<li>	
									<div class="tittle">
										<img src="images/shoe.jpg" class="img-responsive" alt=""/>
										<h6>Item Title Here</h6>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<p>Lorem ipsum dolor sit amet,</p>
										<a class="show1" href="#">SHOW ME MORE</a>
									</div>
								</li>
								<li>	
									<div class="tittle">
										<img src="images/shoe.jpg" class="img-responsive" alt=""/>
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
							  <script defer src="js/jquery.flexslider.js"></script>
							  <script type="text/javascript">
								$(function(){
								  SyntaxHighlighter.all();
								});
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
<div class="col-md-9 w_content">
		<div class="women">
			<a href="#"><h4>Enthecwear - <span>4449 itemms</span> </h4></a>
			<ul class="w_nav">
						<li>Sort : </li>
		     			<li><a class="active" href="#">popular</a></li> |
		     			<li><a href="#">new </a></li> |
		     			<li><a href="#">discount</a></li> |
		     			<li><a href="#">price: Low High </a></li> 
		     			<div class="clear"></div>	
		     </ul>
		     <div class="clearfix"></div>	
		</div>
		<!-- grids_of_4 -->
		<div class="grids_of_4">
		  <div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/5.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$99.99</span>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/6.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$99.99</span>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/7.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$99.99</span>
			   	</div>
			</div>
			
		
		  <div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/8.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$99.99</span>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/9.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				      <span>$99.99</span>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/10.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$99.99</span>
			   	</div>
			</div>
			
		
		  <div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/11.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$99.99</span>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/12.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$99.99</span>
			   	</div>
			</div>
			<div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	  <div class="view view-fifth">
			   	   	 <img src="images/13.jpg" class="img-responsive" alt=""/>
				   	   	<div class="mask">
	                        <div class="info">Quick View</div>
			            </div>
				   	  </a>
				   </div>
				    <h4><a href="details.html"> Duis autem</a></h4>
				     <p>It is a long established fact that a reader</p>
				     <span>$99.99</span>
			   	</div>
			</div>
			
			<div class="clearfix"></div>
		</div>
		<!-- end grids_of_4 -->
	</div>
				<div class="clearfix"></div>	
	</div>		
</div>		
<!-- content -->
</body>
</html>