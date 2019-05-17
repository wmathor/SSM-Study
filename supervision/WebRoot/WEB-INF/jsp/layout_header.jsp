<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="layui-header layui-bg-blue">
	<div class="layui-logo">行业服务与监管平台</div>
	<ul class="layui-nav layui-layout-left">
		<li class="layui-nav-item"><a href="<c:url value="/index"/>"><i class="glyphicon glyphicon-home"></i> 系统首页</a></li>
		<li class="layui-nav-item"><a href="<c:url value="/employee/user"/>"><i class="glyphicon glyphicon-folder-close"></i> 人员培训</a></li>
		<li class="layui-nav-item"><a href=""><i class="glyphicon glyphicon-user"></i> 企业备案</a></li>
		<li class="layui-nav-item"><a href="<c:url value="/admin/organize"/>"><i class="glyphicon glyphicon-cog"></i> 系统管理</a></li>
	</ul>
	<ul class="layui-nav layui-layout-right">
		<li class="layui-nav-item">
			<a href="javascript:;"> 
				<img src="http://t.cn/RCzsdCq" class="layui-nav-img"> ${ sessionScope.user.name } 
			</a>
			<dl class="layui-nav-child">
				<dd><a href="">修改密码</a></dd>
				<dd><a href="<c:url value="/login"/>">退出登录</a></dd>
			</dl>
		</li>
	</ul>
</div>