<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>">

<title>用户登录</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="<c:url value="/res/bootstrap/css/bootstrap.min.css"/>">
<link rel="stylesheet" type="text/css" href="<c:url value="/res/layui/css/layui.css"/>">
<script type="text/javascript" src="<c:url value="/res/jquery-1.11.0.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/res/layui/layui.js"/>"></script>
<script type="text/javascript" src="<c:url value="/res/jquery-validation-1.19.0/jquery.validate.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/res/jquery-validation-1.19.0/localization/messages_zh.min.js"/>"></script>
<style type="text/css">
form .help-block{
	color:red;
	font-weight: normal;
}
</style>
</head>

<body>
	<div class="container">
		<h1 class="page-header">问卷调查</h1>
		<form:form modelAttribute="questionnaire" cssClass="form-horizontal">
			<div class="form-group">
				<label class="col-sm-4 control-label">姓名：</label>
				<div class="col-sm-4">
					<form:input path="name" cssClass="form-control"/>
					<form:errors path="name" element="span" cssClass="help-block"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">年龄：</label>
				<div class="col-sm-4">
					<form:input path="age" cssClass="form-control"/>
					<form:errors path="age" element="span" cssClass="help-block"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">性别：</label>
				<div class="col-sm-4">
					<label class="radio-inline">
						<form:radiobutton path="sex" label="男" value="男"/>
					</label>
					<label class="radio-inline">
						<form:radiobutton path="sex" label="女" value="女"/>
					</label>
					<form:errors path="sex" element="span" cssClass="help-block"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">生日：</label>
				<div class="col-sm-4">
					<form:input path="birthday" cssClass="form-control" autocomplete="off"/>
					<form:errors path="birthday" element="span" cssClass="help-block"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">分数：</label>
				<div class="col-sm-4">
					<form:input path="score" cssClass="form-control"/>
					<form:errors path="score" element="span" cssClass="help-block"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">班级：</label>
				<div class="col-sm-4">
					<!--  
					<form:select path="classes" items="${ classes }" cssClass="form-control"/>
					-->
					<form:select path="classes" cssClass="form-control">
						<form:option value="">== > 请选择班级 < ==</form:option>
						<form:options items="${ classes }"/>
					</form:select>
					<form:errors path="classes" element="span" cssClass="help-block"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">感兴趣的技术：</label>
				<div class="col-sm-8">
					<form:checkboxes items="${ interest }" path="interest"/>
					<form:errors path="interest" element="span" cssClass="help-block"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">意见建议：</label>
				<div class="col-sm-6">
					<form:textarea path="memo" cssClass="form-control" rows="6" cssStyle="resize:none;"/>
					<form:errors path="memo" element="span" cssClass="help-block"/>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<button type="submit" class="btn btn-success">提交问卷</button>
					<button type="reset" class="btn btn-default">重置问卷</button>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-4">
					<form:errors/>
				</div>
			</div>
		</form:form>
	</div>
<script type="text/javascript">
layui.use('laydate', function(){
	var laydate = layui.laydate;
	laydate.render({
		elem:'#birthday'
	});
});
$(function(){
	$('form :checkbox').closest('span').addClass('checkbox-inline');
	
	/*
	$('form').validate({
		rules:{
			name:{
				required:true,
				rangelength:[2,8]
			},
			age:{
				digits:true,
				range:[0,150]
			},
			sex:"required",
			score:{
				number:true,
				range:[0,100]
			}
		},
		messages:{
			name:'用户名长度介于[2,8]之间'
		},
		errorPlacement:function(error, e){
			var $col = e.closest('div');
			error.addClass('help-block').appendTo($col);
		}
	});
	*/
});
</script>
</body>
</html>
