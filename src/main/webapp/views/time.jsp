<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>多线程</title>
</head>
<body>
<%-- 	<form action="${APP_PATH }/upload" method="post" enctype="multipart/form-data">
		<input type="file" name="file"  required/>
		<input type="submit" value="上传"> 
	</form> --%>
<h3>多线程演示</h3>
	<li>
       <a href="${APP_PATH }/time">开始倒计时999</a>
    </li>
</body>
<script type="text/javascript">
</script>
</html>