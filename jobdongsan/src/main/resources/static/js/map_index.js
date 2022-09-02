/**
 * 
 */
 
$(document).ready(function(){

     $('#map_img_tap').hover(
        function(){
            $(this).addClass('animate__animated animate__pulse');
        },
        function(){
            $(this).removeClass('animate__animated animate__pulse');
        }
    );
	
	$('#CD11').on("click", function(){
		$('#list_seoul').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_seoul");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD42').on("click", function(){
		$('#list_gangwondo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gangwondo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD41').on("click", function(){
		$('#list_gyeonggido').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gyeonggido");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD44').on("click", function(){
		$('#list_chungcheongnamdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_chungcheongnamdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD43').on("click", function(){
		$('#list_chungcheongbukdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_chungcheongbukdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD45').on("click", function(){
		$('#list_jeollabukdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_jeollabukdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD46').on("click", function(){
		$('#list_jeollanamdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_jeollanamdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD47').on("click", function(){
		$('#list_gyeongsangbukdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gyeongsangbukdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD48').on("click", function(){
		$('#list_gyeongsangnamdo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gyeongsangnamdo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD50').on("click", function(){
		$('#list_jejudo').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_jejudo");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD28').on("click", function(){
		$('#list_incheon').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_incheon");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD30').on("click", function(){
		$('#list_daejeon').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_daejeon");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD29').on("click", function(){
		$('#list_gwangju').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_gwangju");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD26').on("click", function(){
		$('#list_busan').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_busan");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	$('#CD27').on("click", function(){
		$('#list_daegu').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_daegu");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	
	$('#CD31').on("click", function(){
		$('#list_ulsan').slideToggle("fast");
	});
	
	$(document).mouseup(function (e){
	 var LayerPopup = $("#list_ulsan");
	 if(!LayerPopup.is(e.target) && LayerPopup.has(e.target).length == 0){
	    LayerPopup.css('display','none');
	  }
	});
	
	
	
});