$(function(){
	layui.use('element', function(){
		var element = layui.element;
	});
	
	layout();
	
	function layout(){
		var $body = $('body');
		var $header = $('.layui-header');
		var $side = $('.layui-side');
		var $footer = $('.layui-footer');
		var $main = $('body > .container-fluid');
		
		if($header.length == 0){
			return;
		}
		
		$body.hide().addClass('layui-layout-body');
		var $layout = $('<div/>').addClass('layui-layout layui-layout-admin');
		$layout.appendTo($body);
		
		$header.detach().appendTo($layout);
		$side.detach().appendTo($layout);
		$footer.detach().appendTo($layout);
		
		$('<div/>').addClass('layui-body').appendTo($layout).append($main);
		
		$body.show();
		
	};
});