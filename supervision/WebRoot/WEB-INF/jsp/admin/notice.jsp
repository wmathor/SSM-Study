<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<c:import url="/head"/>
</head>

<body>
	<c:import url="/layout/header"/>
	<c:import url="/layout/side/admin"/>
	<c:import url="/layout/footer"/>
	<div class="container-fluid">
		<ul class="breadcrumb">
			<li><a href="">系统管理</a></li>
			<li><a href="">通知公告</a></li>
		</ul>
		<div id="tbar">
			<a href="<c:url value="/admin/notice/form"/>" class="btn btn-default"><i class="glyphicon glyphicon-plus"></i> 添加通知</a>
			<a href="javascript:void(0);" class="btn btn-default button-edit"><i class="glyphicon glyphicon-pencil"></i> 编辑通知</a>
			<a href="javascript:void(0);" class="btn btn-default button-delete"><i class="glyphicon glyphicon-trash"></i> 删除通知</a>
			<a href="javascript:void(0);" class="btn btn-default button-file"><i class="glyphicon glyphicon-file"></i> 附件管理</a>
		</div>
		<table id="table"></table>
	</div>
<script type="text/javascript">
layui.use(['jquery', 'table', 'layer'], function(){
	var $ = layui.jquery;
	var table = layui.table;
	var layer = layui.layer;
	
	table.render({
		elem:'#table',
		url:'<c:url value="/admin/notice/data"/>',
		page:true,
		height:'full-230',
		cols:[[
		       {type:'numbers'},
		       {type:'checkbox'},
		       {field:'type', title:'新闻类型', width:100,align:'center'},
		       {field:'title', title:'新闻标题'},
		       {field:'time', title:'发布时间', width:160,align:'center'},
		       {field:'author', title:'发布者', width:140,align:'center'},
		       {field:'state', title:'新闻状态', width:100,align:'center'}
		]]
	});
	
	$('.button-delete').click(function(){
		var checked = table.checkStatus('table');
		if(checked.data.length < 1){
			layer.msg('最少选择一条记录！');
			return;
		}
		var index = layer.confirm('确定要删除选择的记录吗？',{icon:3,title:'警告'}, function(){
			var url = '<c:url value="/admin/notice/delete"/>';
			$.each(checked.data, function(i,v){
				url += i == 0 ? "?" : "&";
				url += 'ids=' + v.id;
			});
			layer.close(index);
			
			index = layer.load();
			$.post(url,function(data){
				if(data.state == 'success'){
					table.reload('table');
				}else{
					layer.msg(data.messsage);
				}
				layer.close(index);
			}, 'json');
		});
	});
	
	$('.button-edit').click(function(){
		var rows = table.checkStatus('table');
		//console.log(rows);   //F12 console
		if(rows.data.length != 1){
			layer.msg('请选择一条记录！');
			return;
		}
		
		var url = '<c:url value="/admin/notice/form"/>' + '?id=' + rows.data[0].id;
		// window.top.location.reload();
		window.top.location.href = url;
	});
	
	$('.button-file').click(function(){
		var rows = table.checkStatus('table');
		if(rows.data.length != 1){
			layer.msg('请选择一条记录！');
			return;
		}
		
		var url = '<c:url value="/admin/notice/file"/>' + '?notice=' + rows.data[0].id;
		window.top.location.href = url;
	});
});
</script>
</body>
</html>
