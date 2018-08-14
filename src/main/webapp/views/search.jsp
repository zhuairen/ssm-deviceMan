<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>

<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<link
	href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.css"
	rel="stylesheet">
</head>
<body>
	<div id="table" >
		<form class="form-search" action="/ssm/search" method="post">
		  <input type="text" class="input-medium search-query" placeholder="姓名" id="name" name="name">	 
		  <button type="button" class="btn btn-default" onclick="findByName()">查询人员</button>
		</form>
	</div>
	<div>
		
	</div>
</body>
	<script type="text/javascript">
		function findByName(){
			alert(1);
		}
	</script>
</html>