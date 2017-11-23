<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<style>
.img-container {
	position: relative;
	height: 60px;
	width: 85px;
}

.remove-upload {
	position: absolute;
	right: -10px;
	top: -10px;
}

.size-container {
	position: relative;
}

.remove-size {
	position: absolute;
	right: 5px;
	top: -10px;
}
</style>
<link href="assets/admin/css/admin-product.css" rel="stylesheet">
<!-- Start Page Header -->
<div class="page-header">
	<h1 class="title">Dashboard</h1>
	<ol class="breadcrumb">
		<li><a href="admin/dashboard/">Dashboard</a></li>
		<li><a href="admin/dashboard/list/products/">Products</a></li>
		<li><a href="admin/dashboard/add/product/">Add</a></li>
	</ol>

	<!-- Start Page Header Right Div -->
	<div class="right">
		<div class="btn-group" role="group" aria-label="...">
			<a href="admin/dashboard/" class="btn btn-light">Dashboard</a> <a
				href="#" class="btn btn-light"><i class="fa fa-refresh"></i></a> <a
				href="#" class="btn btn-light"><i class="fa fa-search"></i></a> <a
				href="#" class="btn btn-light" id="topstats"><i
				class="fa fa-line-chart"></i></a>
		</div>
	</div>
	<!-- End Page Header Right Div -->

</div>
<!-- End Page Header -->
<!-- //////////////////////////////////////////////////////////////////////////// -->
<!-- START CONTAINER -->
<div class="radio-container-padding">
	<!-- Start Row -->
	<div class="row">
		<div class="col-md-12">
			<div class="panel panel-default">
				<div class="panel-title">Add new product</div>
				<div class="panel-body">
					<form:form action="admin/dashboard/add/product/"
						modelAttribute="prod" method="post">
						<div class="form-group">
							<label for="id" class="form-label">SKU</label>
							<form:input path="id" cssClass="form-control input-edit" />
						</div>
						<div class="form-group">
							<label for="name" class="form-label">Name</label>
							<form:input path="name" cssClass="form-control input-edit" />
						</div>
						<div class="form-group">
							<label class="form-label">Brand</label>
							<form:select path="brand.id" cssClass="form-control input-edit" items="${brands}" itemLabel="name" itemValue="id"/>
						</div>
						<div class="form-group">
							<label class="form-label">Category</label>
							<form:select path="category.id" cssClass="form-control input-edit">
								<c:forEach var="cate" items="${cates}">
									<option value="${cate.id}">${cate.name} - ${cate.nameVN}</option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group">
							<label class="form-label">Material</label>
							<form:select path="material.id" cssClass="form-control input-edit">
								<c:forEach var="m" items="${mates}">
									<option value="${m.id}">${m.material} - ${m.materialVN}</option>
								</c:forEach>
							</form:select>
						</div>
						<div class="form-group">
							<label for="size" class="form-label">Images</label>
							<div id="list-images" class="row" style="margin: auto;">
							</div>							
						</div>
						<div class="form-group">
							<input id="listImages" name="listImages" hidden="hidden" />
							<a id="btn-upload" class="btn btn-sm btn-default">
								<i class="fa fa-plus"> Choose images</i>
							</a>							
						</div>
						<div class="form-group">
							<label for="size" class="form-label">Sizes</label>
							<div id="list-sizes" class="row">
								<div class="size-container col-md-3" style="margin-right: 10px; margin-bottom: 10px;">
									<select class="shoe-size input-edit">
										<option disabled selected>Choose size</option>
										<c:forEach var="sz" items="${sizes}">
											<option value="${sz.id}">${sz.sizeUS} US - ${sz.sizeVN} VN</option>
										</c:forEach>
									</select>
									<input type="number" value="0" min="0" max="100" class="shoe-quantity input-edit" />
									<a class="remove-size"><i class="fa fa-remove"></i></a>	
								</div>
							</div>
						</div>
						<div class="form-group">
							<input id="listSizes" name="listSizes" hidden="hidden" /> 
							<input id="listQuantity" name="listQuantity" hidden="hidden" /> 
							<a class="btn btn-sm btn-default" id="kj-add-size"><i class="fa fa-plus"> Add more sizes</i></a> 
							<a class="btn btn-sm btn-danger" id="kj-clear-size"><i class="fa fa-remove"> Clear all</i></a>
						</div>
						<div class="form-group">
							<label for="price" class="form-label">Price</label>
							<form:input path="price" cssClass="form-control input-edit"/>
						</div>
						<div class="form-group">
							<label for="Discount" class="form-label">Discount</label>
							<form:input path="discount" cssClass="form-control input-edit" />
						</div>
						<div class="form-group">
							<label class="form-label">Gender</label>
							<div class="row" style="padding-left: 20px; margin-top: 5px;">
								<label class="radio-container col-md-1">Female 
								<form:radiobutton path="gender" value="0" checked="true" cssClass="input-edit" /> <span	class="radio-checkmark"></span>
								</label> 
								<label class="radio-container col-md-1 col-md-offset-1">Male
									<form:radiobutton path="gender" value="1" cssClass="input-edit" /> <span class="radio-checkmark"></span>
								</label> 
								<label class="radio-container col-md-1 col-md-offset-1">Both
									<form:radiobutton path="gender" value="2" cssClass="input-edit"/> <span class="radio-checkmark"></span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="form-label">Options</label>
							<div class="row" style="padding-left: 20px; margin-top: 5px;">
								<label class="checkbox-container col-md-1">Special 
									<form:checkbox path="special" cssClass="input-edit" /> <span class="checkbox-checkmark"></span>
								</label> 
								<label class="checkbox-container col-md-1 col-md-offset-1">Feature
									<form:checkbox path="feature" cssClass="input-edit" /> <span class="checkbox-checkmark"></span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<label for="description" class="form-label">Description</label>
							<form:textarea path="description" cssClass="form-control input-edit" rows="5" />
						</div>
						<div class="form-group">
							<span class="error">${error}</span><span class="success">${success}</span>
							<button id="btn-add" type="submit" class="btn btn-success pull-right">Add</button>
							<button id="btn-save" class="btn btn-primary pull-right" style="margin-right: 20px;">Save</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<!-- End Row -->
</div>
<div id="sizes-options" hidden="true">
	<div class="size-container col-md-3" style="margin-right: 10px; margin-bottom: 10px;">
		<select class="shoe-size input-edit">
			<option disabled selected>Choose size</option>
			<c:forEach var="sz" items="${sizes}">
				<option value="${sz.id}">${sz.sizeUS} US - ${sz.sizeVN} VN</option>
			</c:forEach>
		</select>
		<input type="number" value="0" min="0" max="100" class="shoe-quantity input-edit" />
		<a class="remove-size"><i class="fa fa-remove"></i></a>	
	</div>
</div>
<div id="image-template" hidden="true">
	<div class="img-container shoe-image col-md-3" style="margin-right: 10px; margin-bottom: 10px;">
		<img class="img-upload" src="" height="60" width="85" data-url=""> 
		<a class="remove-upload"><i class="fa fa-remove"></i></a>
	</div>
</div>
<!-- END CONTAINER -->
<!-- //////////////////////////////////////////////////////////////////////////// -->

<!-- ================================================
jQuery Library
================================================ -->
<script src="assets/js/jquery-1.10.2.js"></script>

<!-- ================================================
CKFinder JavaScript File
================================================ -->
<script src="assets/admin/libs/ckfinder/ckfinder.js"></script>

<script>
	$(function() {	
		function disableBtn() {
		    document.getElementById("btn-add").disabled = true;
		}
		
		function undisableBtn() {
		    document.getElementById("btn-add").disabled = false;
		}
		
		disableBtn();
		
		var btnUpload = document.getElementById('btn-upload');
		btnUpload.onclick = function() {
			disableBtn();
			var finder = new CKFinder();
            finder.selectActionFunction = function (fileUrl) {
               	var $template = $("#image-template");
	    		$template.find("img.img-upload").attr("src",fileUrl);
	    		$("#list-images").append($template.html());
            }
            finder.popup();
		};
		
		$(document).on('click', ".remove-upload", function(){
			disableBtn();
			$(this).parent().fadeOut(500, function() { $(this).remove(); });
		});	
		
		
		$("#kj-add-size").click(function() {				
			$("#list-sizes").append($("#sizes-options").html());
			disableBtn();
			return false;
		});
		
		$(document).on('click', ".remove-size", function(){
			disableBtn();
			$(this).parent().fadeOut(500, function() { $(this).remove(); });
		});	
		
		$("#kj-clear-size").click(function() {	
			$("#list-sizes .size-container").remove();
			disableBtn();
			return false;
		});		
		
		$(document).on("change",".input-edit",function() {
			disableBtn();
		});
		
		
		$("#btn-save").click(function() {
			var listImages = "";
			$(".img-container.shoe-image .img-upload").each(function() {
				listImages = listImages + $(this).attr("src") + ";";
			});

			var listSizes = "";
			var listQuantity = "";
			$("#list-sizes .size-container").each(function() {		
				listSizes = listSizes + $(this).find(".shoe-size").val() + ";";
				listQuantity = listQuantity + $(this).find(".shoe-quantity").val() + ";";
			});
			$("#listImages").val(listImages);
			$("#listSizes").val(listSizes);
			$("#listQuantity").val(listQuantity);
			undisableBtn();
			return false;
		});
		
	});
</script>
