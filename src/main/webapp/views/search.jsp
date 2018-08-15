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
		  <input type="text" class="input-medium search-query" placeholder="姓名" id="name" name="name">	 
		  <button type="button" class="btn btn-default" onclick="findByName()">查询人员</button>
	</div>
	<div>
		<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				
				<h3>为用户绑定设备</h3>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
<!-- 				<button class="btn btn-primary" id="dev_modal_btn">查看设备库</button>
				<button class="btn btn-primary" id="psn_add_modal_btn">新增设备</button>
				<button class="btn btn-danger" id="psn_del_modal_btn">删除人员</button> -->
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="psn_table">
					<thead>
						<tr>
							<th>#</th>
							<th>ID</th>
							<th>姓名</th>
							<th>年龄</th>
							<th>邮箱</th>
							<th>部门</th>
							<th>拥有设备数</th>
							<th>操作</th>
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
	</div>
	
		<!-- 拥有设备模态框 -->
<div class="modal fade" id="otherDevModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" style="width:1000px" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myDevModalLabel">拥有设备详情</h4>
      </div>
      <div class="modal-body">
      	 <form class="form-horizontal" id="psnAddModal">
        		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="otherDev_table">
					<thead>
						<tr>
							<th>#</th>
							<th>ID</th>
							<th>设备标识</th>
							<th>设备名</th>
							<th>所在地</th>
							<th>设备价值</th>
							<th>设备详情</th>
						<!-- 	<th>操作</th> -->
						</tr>
					</thead>
					<tbody>
					</tbody>
				</table>
			</div>
			</form>
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
      </div>
      <div class="modal-footer">
     	 <button type="button" class="btn btn-primary" id="otherDevSave">保存并且绑定</button>
        <button type="button" class="btn btn-default" id="otherDevClose">关闭</button>
      </div>
    </div>
  </div>
</div>
	
</body>
	<script type="text/javascript">
		var totalRecord,currentPage;
		function findByName(){
			alert($("#name").val());
			var name = $("#name").val();
			$.ajax({
				url:"${APP_PATH }/findPsnByName",
			    data:"name="+$("#name").val(),
				type:"POST",
				success:function(result){
					console.log(result);
					$("#psn_table tbody").empty();
					var persons = result.extend.data;
			/* 		$.each(emps,function(index,item){
						alert(item.name);
					}); */

					$.each(persons,function(index,item){
						var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
						var id = $("<td></td>").append(item.id);
						var name = $("<td></td>").append(item.name);
						//alert(item.name);
						var age = $("<td></td>").append(item.age);
						var email = $("<td></td>").append(item.email);
						var deptName = $("<td></td>").append(item.deptName);
						var devCount = $("<td></td>").append(item.devCount);

						var addDevBtn = $("<button></button>").addClass("btn btn-primary btn-sm addDev_btn")
										.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("绑定新设备");
						addDevBtn.attr("add-id",item.id);

						//var delBtn = 
						//append方法执行完成以后还是返回原来的元素
						$("<tr></tr>").append(checkBoxTd)
							.append(id)
							.append(name)
							.append(age)
							.append(email)
							.append(deptName)
							.append(devCount)
							.append(addDevBtn)
							.appendTo("#psn_table tbody");
					});				
				}
			});
			
			
		}
		$(document).on("click",".addDev_btn",function(){
			reset_form("#otherDevModal form");
			getOtherDev(1);
			$("#otherDevModal").modal({
				backdrop:"static"
			});
		});
		$("#otherDevClose").click(function(){
			$("#otherDevModal").modal('hide');
			reset_form("#otherDevModal form");
		});
		//清空表单样式及内容
		function reset_form(ele){
			$(ele)[0].reset();
			//清空表单样式
			$(ele).find("*").removeClass("has-error has-success");
			$(ele).find(".help-block").text("");
		}
		$("#otherDevSave").click(function(){
		
		});
		//显示分页信息
		function build_page_info(result){
			$("#page_info_area").empty();
			$("#page_info_area").append("当前"+result.extend.pageInfo.pageNum+"页,共"+
					result.extend.pageInfo.pages+"页,共"+
					result.extend.pageInfo.total+"条记录");
			totalRecord = result.extend.pageInfo.total;
			currentPage = result.extend.pageInfo.pageNum;
		}
		
		function build_page_nav(result){
			//page_nav_area
			$("#page_nav_area").empty();
			var ul = $("<ul></ul>").addClass("pagination");
			
			//构建元素
			var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
			var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
			if(result.extend.pageInfo.hasPreviousPage == false){
				firstPageLi.addClass("disabled");
				prePageLi.addClass("disabled");
			}else{
				//为元素添加点击翻页的事件
				firstPageLi.click(function(){
					to_page(1);
				});
				prePageLi.click(function(){
					to_page(result.extend.pageInfo.pageNum -1);
				});
			}
						
			var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
			var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
			if(result.extend.pageInfo.hasNextPage == false){
				nextPageLi.addClass("disabled");
				lastPageLi.addClass("disabled");
			}else{
				nextPageLi.click(function(){
					to_page(result.extend.pageInfo.pageNum +1);
				});
				lastPageLi.click(function(){
					to_page(result.extend.pageInfo.pages);
				});
			}
			
			
			
			//添加首页和前一页 的提示
			ul.append(firstPageLi).append(prePageLi);
			//1,2，3遍历给ul中添加页码提示
			$.each(result.extend.pageInfo.navigatepageNums,function(index,item){
				
				var numLi = $("<li></li>").append($("<a></a>").append(item));
				if(result.extend.pageInfo.pageNum == item){
					numLi.addClass("active");
				}
				numLi.click(function(){
					to_page(item);
				});
				ul.append(numLi);
			});
			//添加下一页和末页 的提示
			ul.append(nextPageLi).append(lastPageLi);
			
			//把ul加入到nav
			var navEle = $("<nav></nav>").append(ul);
			navEle.appendTo("#page_nav_area");
		}
		function to_page(pn){
			getOtherDev(pn);
		}
		//获取设备库中不曾被绑定的
		function getOtherDev(pn){
			$.ajax({
				url:"${APP_PATH }/selectOtherDev",
				data:"pn="+pn,
				type: "GET",
				success: function(result){
					var devices = result.extend.pageInfo.list;
					$.each(devices,function(index,item){
						var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
						var id = $("<td></td>").append(item.devId);
						//alert(item.name);
						var devSn = $("<td></td>").append(item.devSn);
						var devName = $("<td></td>").append(item.devName);
						var devAddr = $("<td></td>").append(item.devAddr);
						var devPrice = $("<td></td>").append(item.devPrice);
						var devDetail = $("<td></td>").append(item.devDetail);
						//var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
										//.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
						//为编辑按钮添加一个自定义的属性，来表示当前员工id
						//editBtn.attr("edit-name",item.name);
/* 						var delPsnDevBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delPsnDev_btn")
										.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("移除");
						//为删除按钮添加一个自定义的属性来表示当前删除的员工id
						delPsnDevBtn.attr("delPsnDevId",item.device.devId); */
						//var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
						//var delBtn = 
						//append方法执行完成以后还是返回原来的元素
						$("<tr></tr>").append(checkBoxTd)
							.append(id)
							.append(devSn)
							.append(devName)
							.append(devAddr)
							.append(devPrice)
							.append(devDetail)
							.appendTo("#otherDev_table tbody");
					});
					
					//2、解析并显示分页信息
					build_page_info(result);
					//3、解析显示分页条数据
					build_page_nav(result);
				}
			});
			}

	</script>
</html>