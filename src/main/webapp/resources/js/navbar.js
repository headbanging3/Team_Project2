
//고객센터 드롭메뉴 js
$('.dropdown').click(function(){
	$('.submenu').toggleClass('submenuShow')
});
$('#menu').click(function(){
	$( '#nav' ).slideToggle( 'fast' );
});

//팝업 띄우는 함수 
function showPopup(){
	window.open("/shoopse/popup/signinform.do","팝업창","width=600,height=400,top=200,left=700");
}
	
// 팝업을 닫는 함수
//function closePopup() {
//	 window.close();
//}
	
function menuClick(menu) {
	if(menu=='userMain'){			
		location.href='/shoopse/userpage/index.jsp';
	}	
	if(menu=='shop'){	
		//alert(menu);
		location.href='/shoopse/userpage/shop/shop.do';
	}	
	if(menu=='nike'){
		//alert(menu);
		location.href='/shoopse/products/test.do';
	}	
	}