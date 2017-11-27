$(function(){
	$("#btn-add-cart").off().click(function() {
		var id=$("input[name=size]:checked").val();
		if(id != null) {
			$.ajax({
				url: "shopping-cart/add/",
				dataType: "json",
				data: {
					id: id
				},
				success:function(res){
					$(".nn-cart #count").html(res[0]);
					$(".nn-cart #amount").html(res[1].toLocaleString());
				}
			});
			var img = $(this).parents(".single_left").find(".etalage_thumb_active .etalage_thumb_image");
			var src = img.attr("src");
			var css = '.nn-cart-fly {background-image: url("'+src+'");background-size: 100% 100%; z-index: 9999;}'
			$("#nn-cart-fly").html(css);
			img.effect("transfer", {to:".nn-cart-img", className:"nn-cart-fly"}, 500);
		}
	});
	
	$("a[data-cart-remove]").off().click(function() {
		var id=$(this).attr("data-cart-remove");
		$.ajax({
			url: "shopping-cart/remove/",
			dataType: "json",
			data: {
				id: id
			},
			success:function(res){
				$(".nn-cart #count").html(res[0]);
				$(".nn-cart #amount").html(res[1].toLocaleString());
				$(".tot span").html(res[1].toLocaleString());
			}			
		});
		
		// has animation :)))
		$(this).parents("tr").hide(300);		
	});
	
	$("input[data-cart-update]").change(function() {
		var id=$(this).attr("data-cart-update");
		var newQuantity=$(this).val();
		var $td_amt = $(this).parents("tr").find(".amt");
		$.ajax({
			url: "shopping-cart/update/",
			dataType: "json",
			data: {
				id: id,
				qty: newQuantity
			},
			success:function(res){
				$(".nn-cart #count").html(res[0]);
				$(".nn-cart #amount").html(res[1].toLocaleString());
				$(".tot span").html(res[1].toLocaleString());
				$td_amt.html(res[2].toLocaleString() + " Đ");
			}			
		});
		
	});
	
});