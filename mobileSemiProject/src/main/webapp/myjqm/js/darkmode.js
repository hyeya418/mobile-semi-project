/*
<script src="js/darkmode.js"></script>
   <a href="#" data-role="button" id="btnLightDark"
		class="ui-shadow ui-btn ui-corner-all ui-mini ui-btn-b">다크모드</a>
*/

$(function(){
	// 다크모드 버튼
	$("#btnLightDark").click(function() {
		var btnLightDark = $("#btnLightDark");
		var page = $("#page");
		
		if(btnLightDark.text() == '다크모드'){
			btnLightDark.text("라이트모드");
			btnLightDark.removeClass("ui-btn-b");
			btnLightDark.addClass("ui-btn-a");
			page.removeClass("ui-page-theme-a");
			page.addClass("ui-page-theme-b");
			
		} else {
			btnLightDark.text("다크모드");
			btnLightDark.removeClass("ui-btn-a");
			btnLightDark.addClass("ui-btn-b");
			page.removeClass("ui-page-theme-b");
			page.addClass("ui-page-theme-a");
		}
	});
	
});
