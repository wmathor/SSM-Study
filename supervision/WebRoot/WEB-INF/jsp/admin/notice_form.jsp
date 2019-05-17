<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
			<li><a href="<c:url value="/admin/notice"/>">通知公告</a></li>
			<li><a href="">${notice.id == null ? "添加通知公告" :"编辑通知公告"}</a></li>
		</ul>
		<form:form modelAttribute="notice" cssClass="form-horizontal">
			<div class="form-group">
				<label class="col-sm-4 control-label">通知类型：</label>
				<div class="col-sm-4">
					<form:select path="type.id" cssClass="form-control" items="${ types }" itemValue="id" itemLabel="text"/>
					<form:errors path="type.id" cssClass="help-block" element="span"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">通知状态：</label>
				<div class="col-sm-4">
					<form:select path="state.id" cssClass="form-control" items="${ states }" itemValue="id" itemLabel="text"/>
					<form:errors path="state.id" cssClass="help-block" element="span"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">通知标题：</label>
				<div class="col-sm-4">
					<form:input path="title" cssClass="form-control"/>
					<form:errors path="title" cssClass="help-block" element="span"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">通知内容：</label>
				<div class="col-sm-7">
					<form:textarea path="content" cssClass="form-control" rows="6"/>
					<form:errors path="content" cssClass="help-block" element="span"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button type="submit" class="btn btn-primary">保存</button>
					<button type="reset" class="btn btn-primary">重置</button>
					<a href="<c:url value="/admin/notice"/>" class="btn btn-default">返回</a>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>
