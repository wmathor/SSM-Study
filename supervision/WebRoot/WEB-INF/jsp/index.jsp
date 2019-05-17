<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
<c:import url="/head"/>
</head>

<body>
	<c:import url="/layout/header"/>
	<c:import url="/layout/side/index"/>
	<c:import url="/layout/footer"/>
	<div class="container-fluid">
		<h3 class="page-header">通知公告</h3>
		<table class="table table-stripped table-bordered">
			<col width="60px"/>
			<col>
			<col width="150px"/>
			<col width="120px"/>
			<col width="60px"/>
			<tr>
				<th>类型</th>
				<th>标题</th>
				<th>时间</th>
				<th>发布者</th>
				<th>状态</th>
			</tr>
			<c:forEach items="${ notices }" var="i">
				<tr>
					<td>${ i.type.text }</td>
					<td>${ i.title }</td>
					<td><fmt:formatDate value="${ i.time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					<td>${ i.author.name }</td>
					<td>${ i.state.text }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
