<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
<head>
<title>用户登录</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="<c:url value="/res/bootstrap/css/bootstrap.min.css"/>" type="text/css"></link>
</head>

<body>
	<div class="container">
		<h1 class="page-header">用户登录</h1>
		<form:form modelAttribute="login" cssClass="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-4">用户名：</label>
				<div class="col-sm-4">
					<form:input path="username" cssClass="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-4">密码：</label>
				<div class="col-sm-4">
					<form:password path="password" cssClass="form-control"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button type="submit" class="btn btn-success btn-block">登录</button>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>
