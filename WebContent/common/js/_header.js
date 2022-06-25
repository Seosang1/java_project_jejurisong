
$(document).ready(function() {
	$(".page-header").each(function() {
		var $window = $(window); // 브라우저 창을 jQuery객체로 저장
		var $header = $(this); // page-header를 jQuery객체로 저장(고정시켜야 할 객체)
		var headerOffsetTop = $header.offset().top;
		// $header의 상단 지점의 위치(이 값에 따라 고정시킬지 여부가 결정됨)

		$window.on("scroll", function() {
			// 브라우저($window)에서 스크롤 이벤트가 발생했을 때 동작됨
			if ($window.scrollTop() > headerOffsetTop) {
				// 브라우저의 스크롤바 상단 위치($window.scrollTop())가 메뉴바 상단위치(headerOffsetTop)보다 크면
				// 메뉴바가 가려질 정도로 스크롤바가 내려왔을 경우
				$header.addClass("sticky");
				// $header에 'sticky'라는 클래스를 추가(sticky : css에서 상단에 고정시키는 스타일을 적용한 클래스)
			} else {
				$header.removeClass("sticky");
				// $header에 'sticky'라는 클래스를 제거(sticky : css에서 상단에 고정시키는 스타일을 적용한 클래스)
			}
		});

		$window.trigger("scroll");
		// trigger() : 선택한 객체에 지정한 이벤트를 인위적으로 발생시키는 메소드
		// 파일 로딩 후 헤더의 초기 위치를 조정하기 위해 실행됨 
	});
});