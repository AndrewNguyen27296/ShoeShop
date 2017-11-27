<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<!-- etale -->
<link rel="stylesheet" href="assets/css/etalage.css">
<style id="nn-cart-fly">
	
</style>
<script src="assets/js/jquery-ui.min.js"></script>
<script src="assets/js/shopping-cart.js"></script>
<script src="assets/js/jquery.etalage.min.js"></script>
<script>
	jQuery(document).ready(function($){
		$('#etalage').etalage({
			thumb_image_width: 300,
			thumb_image_height: 400,
			source_image_width: 800,
			source_image_height: 1000,
			show_hint: true,
			click_callback: function(image_anchor, instance_id){
				alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
			}
		});
	});
</script>
<!-- etale -->

<!-- details -->
<div class="col-md-9">
	<div class="single_left">		 
		<div class="grid images_3_of_2">
			<ul id="etalage" style="height: 460px;">
				<c:forEach items="${prod.productImages}" var="p">
					<li>
						<img class="etalage_thumb_image" src="assets/upload/products/files/${p.image}" class="img-responsive" width="100%" height="60%" />
						<img class="etalage_source_image" src="assets/upload/products/files/${p.image}" class="img-responsive" width="100%" height="60%" />
					</li>
				</c:forEach>
			</ul>
			<div class="clearfix"></div>	
	 	</div>
		<div class="desc1 span_3_of_2">
			<h3>${prod.name}</h3>
			<p><fmt:formatNumber value="${prod.price}" pattern="###,###"/> Đ</p>
			<div class="det_nav">
				<h4>Related styles :</h4>
				<ul>
					<c:forEach items="${prod.brand.products}" var="p">
						<li><a href="detail/${p.id}/"><img src="assets/upload/products/files/${p.productImages[0].image}" class="img-responsive" alt=""/></a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="det_nav1">
				<h4>Select a size :</h4>
				<div class=" sky-form col col-4">
					<ul>
						<c:forEach items="${prod.productSizes}" var="s">
							<li>
								<label>
									<input type="radio" name="size" value="${s.id}">
									<i></i> ${s.size.sizeUS}
								</label>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="btn_form">
				<a id="btn-add-cart">Buy</a>
			</div>
		</div>
		<div class="clearfix"></div>
    </div>
    <div class="single-bottom1">
		<h6>Details</h6>
		<p class="prod-desc">${prod.description}</p>
	</div>
	<div class="single-bottom2">
		<h6>Related Products</h6>
		<c:forEach items="${prod.category.products}" var="p">
			<div class="product">
				<div class="product-desc">
					<div class="product-img">
                         <a href="detail/${p.id}/"><img src="assets/upload/products/files/${p.productImages[0].image}" class="img-responsive " alt=""/></a>
			        </div>
	             	<div class="prod1-desc">
                    	<h5><a class="product_link" href="detail/${p.id}/">${p.name}</a></h5>
                    	<h5 class="price-access"><b><fmt:formatNumber value="${prod.price}" pattern="###,###"/> Đ</b></h5>	
                    	<p class="product_descr">${p.description}</p>									
				   	</div>
				   <div class="clearfix"></div>
				</div>
				<div class="product_price" style="margin-top: 10px;">												
					<a class="button1" href="detail/${p.id}/"><span>Detail</span></a>
	            </div>
				 <div class="clearfix"></div>
			</div>
		</c:forEach>		
		 
	</div>
</div>	
<!-- details -->
    