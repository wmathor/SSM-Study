<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="layui-side layui-bg-black">
	<div class="layui-side-scroll">
		<ul class="layui-nav layui-nav-tree layui-bg-black">
			<li class="layui-nav-item layui-nav-itemed">
				<a href="javascript:;">信息管理</a>
				<dl class="layui-nav-child">
					<dd><a href="<c:url value="/employee/user"/>">企业人员</a></dd>
					<dd><a href="<c:url value="/employee/dishonesty"/>">失信记录</a></dd>
				</dl>
			</li>
			<li class="layui-nav-item layui-nav-itemed">
				<a href="javascript:;">培训管理</a>
				<dl class="layui-nav-child">
					<dd><a href="<c:url value="/employee/train"/>">培训项目</a></dd>
					<dd><a href="<c:url value="/employee/train/user"/>">人员培训</a></dd>
				</dl>
			</li>
			<li class="layui-nav-item layui-nav-itemed">
				<a href="javascript:;">证书管理</a>
				<dl class="layui-nav-child">
					<dd><a href="<c:url value="/employee/certificate"/>">证书信息</a></dd>
					<dd><a href="<c:url value="/employee/certificate/renewal"/>">证书补换</a></dd>
				</dl>
			</li>
			<li class="layui-nav-item layui-nav-itemed">
				<a href="javascript:;">统计分析</a>
				<dl class="layui-nav-child">
					<dd><a href="<c:url value="/employee/statistic/train"/>">培训统计</a></dd>
					<dd><a href="<c:url value="/employee/statistic/user"/>">人员统计</a></dd>
					<dd><a href="<c:url value="/employee/statistic/certificate"/>">证书统计</a></dd>
				</dl>
			</li>
		</ul>
	</div>
</div>