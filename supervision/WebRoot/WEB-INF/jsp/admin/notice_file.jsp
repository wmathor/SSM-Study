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
			<li><a>系统管理</a></li>
			<li><a href="<c:url value="/admin/notice"/>">通知公告</a></li>
			<li><a href="<c:url value="/admin/notice/file?notice=${param.notice }"/>">附件管理</a></li>
		</ul>
		<div>
			<button type="button" class="btn btn-success" id="upload">上传文件</button>
			<button type="button" class="btn btn-default button-download">下载文件</button>
		</div>
		<table id="table"></table>
	</div>
<script type="text/javascript">
layui.use(['jquery', 'table', 'layer', 'upload'], function(){
	var $ = layui.jquery;
	var table = layui.table;
	var layer = layui.layer;
	var upload = layui.upload;
	
	upload.render({
		elem:'#upload',
		url:'<c:url value="/admin/notice/file/upload"/>',
		data:{notice:'${param.notice}'},
		field:'upload',
		accept:'file',
		before:function(file){
			layer.load();
		},
		done:function(data){
			if(data.state == 'success'){
				table.reload('table');
			}else{
				layer.msg(data.message);
			}
			layer.closeAll('loading');
		},
		error:function(){
			layer.msg('文件上传失败');
			layer.closeAll('loading');
		}
	});
	
	table.render({
		elem:'#table',
		url:'<c:url value="/admin/notice/file/data"/>?notice=${param.notice}',
		page:true,
		cols:[[
		   {type:'numbers'},
		   {type:'checkbox'},
		   {field:'filename',title:'文件名'},
		   {field:'size',title:'文件大小',width:160,align:'center'}
		]]
	});
	
	$('.button-download').click(function(){
		var data = table.checkStatus('table').data;
		if(data.length == 0){
			layer.msg('请选择一条记录');
			return;
		}
		
		var url = '<c:url value="/admin/notice/file/download"/>?notice=${param.notice}';
		$.each(data, function(i,v){
			url += '&ids=' + v.id;
		});
		window.top.location.href = url;
	});
});
</script>
</body>
</html>
