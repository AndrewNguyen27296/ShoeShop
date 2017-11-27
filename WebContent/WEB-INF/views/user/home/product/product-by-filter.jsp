<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<style>	
	.grid1_of_4 span {
	    font-size: 1.2em;
	    color: #ed1c24;
	    font-weight: 600;
	}
	.view .mask {
	    position: absolute;
	    overflow: hidden;
	    left: 155px;
	    top: 72px;
	}	
	.grid1_of_4 {
	    float: left;
	    width: 30.22222%;
	    margin-left: 0;
	}
</style>
<div class="col-md-9">
	<div class="woprods">
		<a href="#"><h4>
				Total - <span>${fn:length(prods)} items</span>
			</h4></a>
		<ul class="w_nav">
			<li>Sort :</li>
			<li><a class="active" href="#">popular</a></li> |
			<li><a href="#">new </a></li> |
			<li><a href="#">discount</a></li> |
			<li><a href="#">price: Low High </a></li>
			<div class="clear"></div>
		</ul>
		<div class="clearfix"></div>
	</div>
	<div class="row" style="margin-top: 40px;">
		<c:forEach items="${prods}" var="p">
			<div class="col-md-4 grid1_of_4" style="margin-bottom: 40px; margin-right: 5px;">
				<div class="content_box">
					<a href="detail/${p.id}">
						<div class="view view-fifth">
							<img src="assets/upload/products/files/${p.productImages[0].image}" class="img-responsive" alt="" width="100%" height="90%" />
							<div class="mask">
								<div class="info">Quick View</div>
							</div>
						</div>
					</a>
				</div>
				<h5><a href="detail/${p.id}">${p.name}</a></h5>
				<p style="height: 60px;">${p.description}</p>
				<span><fmt:formatNumber value="${p.price}" pattern="###,###"/> Đ</span>
			</div>
		</c:forEach>		
	</div>
</div>