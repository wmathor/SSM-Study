<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'model.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	<ul>
		<li>${ requestScope.a }</li>
		<li>${ b  }</li>
		<li>${ c }</li>
		<li><c:out value="${ d }" default="<a href='baidu.com'>超链接</a>" escapeXml="true"/></li>
		<li><c:out value="${ d }" default="<a href='baidu.com'>超链接</a>" escapeXml="false"/></li>
	</ul>
	
	<ul>
		<c:forEach items="${ citys }" var="i" begin="0" end="4" step="1" varStatus="s">
			<li>${s.index + 1}:${ i }</li>
		</c:forEach>
	</ul>
	
	<select>
		<c:forEach items="${ departments }" var="i">
			<option value="${ i.key }">${ i.value }</option>
		</c:forEach>
	</select>
	
	<table border="1">
		<thead>
			<tr>
				<th>ID</th><th>姓名</th><th>生日</th><th>工资</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ users }" var="i">
				<tr>
					<td>${ i.id }</td>
					<td>${ i.name }</td>
					<td><fmt:formatDate value="${ i.birthday }" pattern="yyyy年MM月dd日"/></td>
					<td><fmt:formatNumber value="${ i.salary }" pattern="#,##0.00"/></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
