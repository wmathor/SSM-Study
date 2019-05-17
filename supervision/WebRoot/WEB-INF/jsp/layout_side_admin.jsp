<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<ul class="layui-nav layui-nav-tree">
			<li class="layui-nav-item"><a href="<c:url value="/admin/organize"/>">机构信息</a></li>
			<li class="layui-nav-item"><a href="<c:url value="/admin/user"/>">平台用户</a></li>
			<li class="layui-nav-item"><a href="<c:url value="/admin/notice"/>">通知公告</a></li>
		</ul>
	</div>
</div>