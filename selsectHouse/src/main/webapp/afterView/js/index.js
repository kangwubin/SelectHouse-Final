$(function(){

	// 点击查询 打开查询区域
	$("#search-btn").click(function(){
		$("header nav").hide();
		$("header .icon-box").hide();
		$("header .search-box").show();
	});

	// 关闭查询区域
	$("#close-btn").click(function(){
		$("header nav").show();
		$("header .icon-box").show();
		$("header .search-box").hide();
	});

	// 块状样式显示课程列表
	$("#show-kuai").click(function(){
		$(".main").find(".lesson-list2").addClass("lesson-list");
		$(".main").find(".lesson-list").removeClass("lesson-list2");
	});

	// 列表样式显示课程列表
	$("#show-list").click(function(){
		$(".main").find(".lesson-list").addClass("lesson-list2");
		$(".main").find(".lesson-list2").removeClass("lesson-list");
	});

	// 返回顶部
	window.onscroll = function(){
		var windowHeight = $(window).height();  //获取浏览器的高度
		var scrollHeight = $(window).scrollTop(); //获取滚动条距顶端的高度
		if(scrollHeight > windowHeight){
			$(".gotop .top").css("display","block");
		}else{
			$(".gotop .top").hide();
		}
	}
	$(".gotop .top").click(function(){
		var speed = 200;//滑动的速度
		$('body,html').animate({ scrollTop: 0 }, speed);
	});

});
