<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
           <h3>这是普通页面</h3>
           <!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<%-- <h1>欢迎尊敬的    ${sessionScope.person.name}</h1> --%>
				<h3>拥有的设备</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 col-md-offset-8">

			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="devsnormal_table">
					<thead>
						<tr>
							<th>#</th>
							<th>设备ID</th>
							<th>设备标识</th>
							<th>设备名</th>
							<th>所在地</th>
							<th>设备价值</th>
							<th>设备详情</th>
						</tr>
					</thead>
					<tbody>
					
					</tbody>
				</table>
			</div>
		</div>

		<!-- 显示分页信息 -->
		<div class="row">
			<!--分页文字信息  -->
			<div class="col-md-6" id="page_info_area">当前 页,共
				页,共条记录</div>
			<!-- 分页条信息 -->
			<div class="col-md-6" id="page_nav_area">
				
			</div>
		</div>
		
	</div>
</body>
</html>