<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
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
</head>
<body>

	<!-- 新增人员模态框 -->
<div class="modal fade" id="devAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">新增人员</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" id="PsnUpdateModal">
          <div class="form-group">
		    <label class="col-sm-2 control-label" >Id</label>
		    <div class="col-sm-5">
		      <input type="number" name="id" class="form-control" id="id_add_input"  disabled="disabled">
		      <span class="help-block"></span>
		    </div>		    
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-5">
		      <input type="text" name="name" class="form-control" id="name_add_input" placeholder="姓名">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">年龄</label>
		    <div class="col-sm-10">
		      <input type="text" name="age" class="form-control" id="age_add_input" placeholder="年龄">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">邮箱</label>
		    <div class="col-sm-10">
		      <input type="text" name="email" class="form-control" id="email_add_input" placeholder="邮箱">
		      <span class="help-block"></span>
		    </div>
		  </div>
 		  <div class="form-group">
		    <label class="col-sm-2 control-label">部门</label>
		    <div class="col-sm-10">
		      <input type="text" name="deptName" class="form-control" id="deptName_add_input" placeholder="部门">
		      <span class="help-block"></span>
		    </div>		    
		  </div>

		 <div class="form-group">
		    <label class="col-sm-2 control-label">权限</label>
		    <div class="col-sm-10">
		      <input type="text" name="power" class="form-control" id="power_add_input" placeholder="权限">
		      <span class="help-block"></span>
		    </div>		    
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="psn_save_btn">保存</button>
      </div>
    </div>
  </div>
</div>



		<!-- 拥有设备模态框 -->
<div class="modal fade" id="psnDevModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" style="width:1000px" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myDevModalLabel">拥有设备详情</h4>
      </div>
      <div class="modal-body">
        		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="psnDev_table">
					<thead>
						<tr>
							<th>#</th>
							<th>ID</th>
							<th>设备标识</th>
							<th>设备名</th>
							<th>所在地</th>
							<th>设备价值</th>
							<th>设备详情</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
 <!-- 							<td>#</td>
							<td>ID</td>
							<td>设备标识</td>
							<td>设备名</td>
							<td>所在地</td>
							<td>设备价值</td>
							<td>设备详情</td>
							<td>操作</td -->
					</tbody>
				</table>
			</div>
		</div>
		
	</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
	
			<!-- 编辑人员模态框 -->
<div class="modal fade" id="psnUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">修改人员信息</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" id="PsnUpdateModal">
          <div class="form-group">
		    <label class="col-sm-2 control-label" >Id</label>
		    <div class="col-sm-5">
		      <input type="number" name="id" class="form-control" id="id_update_input"  disabled="disabled">
		      <span class="help-block"></span>
		    </div>		    
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">姓名</label>
		    <div class="col-sm-5">
		      <input type="text" name="name" class="form-control" id="name_update_input" placeholder="姓名">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">年龄</label>
		    <div class="col-sm-10">
		      <input type="text" name="age" class="form-control" id="age_update_input" placeholder="年龄">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">邮箱</label>
		    <div class="col-sm-10">
		      <input type="text" name="email" class="form-control" id="email_update_input" placeholder="邮箱">
		      <span class="help-block"></span>
		    </div>
		  </div>
 		  <div class="form-group">
		    <label class="col-sm-2 control-label">部门</label>
		    <div class="col-sm-10">
		      <input type="text" name="deptName" class="form-control" id="deptName_update_input" placeholder="部门">
		      <span class="help-block"></span>
		    </div>		    
		  </div>

		 <div class="form-group">
		    <label class="col-sm-2 control-label">权限</label>
		    <div class="col-sm-10">
		      <input type="text" name="power" class="form-control" id="power_update_input" placeholder="权限">
		      <span class="help-block"></span>
		    </div>		    
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" id="psn_update_btn">修改</button>
      </div>
    </div>
  </div>
</div>
	
	<!-- 页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<%-- <h1>欢迎尊敬的    ${sessionScope.person.name}</h1> --%>
				<h3>所有人员及名下设备数量</h3>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<!-- <button class="btn btn-primary" id="dev_modal_btn">查看设备库</button> -->
				<button class="btn btn-primary" id="psn_add_modal_btn">新增设备</button>
				<button class="btn btn-danger" id="psn_del_modal_btn">删除人员</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="emps_table">
					<thead>
						<tr>
<!-- 							<th>#</th>
							<th>name</th>
							<th>age</th>
							<th>email</th>
							<th>deptName</th>
							<th>拥有设备数</th>
							<th>操作</th> -->
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
	<script type="text/javascript">
	var totalRecord,currentPage;
	$(function(){
		//去首页
		//alert("");
		to_page(1);
	});
	
	function to_page(pn){
		$.ajax({
			url:"${APP_PATH}/init",
			data:"pn="+pn,
			type:"GET",
			success:function(result){
				console.log(result);
				//1、解析并显示员工数据
				build_emps_table(result);
				//2、解析并显示分页信息
				build_page_info(result);
				//3、解析显示分页条数据
				build_page_nav(result);
			}
		});
	}
	
	function build_emps_table(result){
		//清空table表格
		$("#emps_table tbody").empty();
		var persons = result.extend.pageInfo.list;
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

			var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
							.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
			//为编辑按钮添加一个自定义的属性，来表示当前员工id
			editBtn.attr("edit-id",item.id);
			var seaBtn =  $("<button></button>").addClass("btn btn-success btn-sm search_btn")
							.append($("<span></span>").addClass("glyphicon glyphicon-share")).append("查看");
			//为删除按钮添加一个自定义的属性来表示当前删除的员工id
			seaBtn.attr("sea-id",item.name);
			var btnTd = $("<td></td>").append(editBtn).append(" ").append(seaBtn);
			//var delBtn = 
			//append方法执行完成以后还是返回原来的元素
			$("<tr></tr>").append(checkBoxTd)
				.append(id)
				.append(name)
				.append(age)
				.append(email)
				.append(deptName)
				.append(devCount)
				.append(btnTd)
				.appendTo("#emps_table tbody");
		});
	}
	
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
	//清空表单样式及内容
	function reset_form(ele){
		$(ele)[0].reset();
		//清空表单样式
		$(ele).find("*").removeClass("has-error has-success");
		$(ele).find(".help-block").text("");
	}
	
	$(document).on("click",".edit_btn",function(){
		//alert("edit");
		
		
		//1、查出部门信息，并显示部门列表
		//getDepts("#empUpdateModal select");
		//2、查出员工信息，显示员工信息
		getPsn($(this).attr("edit-id"));
		
		//3、把员工的id传递给模态框的更新按钮
		$("#psn_update_btn").attr("edit-id",$(this).attr("edit-id"));
		$("#psnUpdateModal").modal({
			backdrop:"static"
		});
	});
	//修改之前查询个人信息
	function getPsn(id){
		$.ajax({
			url:"${APP_PATH}/getPsn",
			data:"id="+id,
			type:"GET",
			success:function(result){
				console.log(result.extend.data);
				//替换模块中的值
				$("#id_update_input").val(result.extend.data.id);
				$("#name_update_input").val(result.extend.data.name);
				$("#age_update_input").val(result.extend.data.age);
				$("#email_update_input").val(result.extend.data.email);
				$("#deptName_update_input").val(result.extend.data.deptName);
				$("#power_update_input").val(result.extend.data.power);
			}
		});
	}
	//保存修改的个人信息
	$("#psn_update_btn").click(function (){
		//alert("修改人员信息按钮");
		$.ajax({
			url:"${APP_PATH}/updatePsn/"+$(this).attr("edit-id"),
			type:"PUT",
			data:$("#psnUpdateModal form").serialize(),
			success:function(result){
				$("#psnUpdateModal").modal('hide');
				to_page(currentPage);
			}
		});
	});
	//点击新增按钮弹出模态框。
	$("#psn_add_modal_btn").click(function(){
		//清除表单数据（表单完整重置（表单的数据，表单的样式））
		reset_form("#empAddModal form");
		//alert(1);
		//s$("")[0].reset();
		//发送ajax请求，查出部门信息，显示在下拉列表中
		//getDepts("#empAddModal select");
		//弹出模态框
		$("#empAddModal").modal({
			backdrop:"static"
		});
	});
	//保存
	$("#dev_save_btn").click(function(){
			//1、模态框中填写的表单数据提交给服务器进行保存
			//1、先对要提交给服务器的数据进行校验
/* 			if(!validate_add_form()){
				return false;
			}; */
			//1、判断之前的ajax用户名校验是否成功。如果成功。
/* 			if($(this).attr("ajax-va")=="error"){
				return false;
			} */
			//alert($("#empAddModal form").serialize());
			//2、发送ajax请求保存员工
			$.ajax({
				url:"${APP_PATH}/addDevice",
				type:"POST",
				data:$("#empAddModal form").serialize(),
				success:function(result){
					//alert(result.msg);
					//alert(result);
					$("#empAddModal").modal('hide');
					//to_page(totalRecord);
					/* if(result.code == 100){
						//员工保存成功；
						//1、关闭模态框
						
						alert(1);
						//2、来到最后一页，显示刚才保存的数据
						//发送ajax请求显示最后一页数据即可
						
					}else{
						//显示失败信息
						//console.log(result);
						//有哪个字段的错误信息就显示哪个字段的；
						/* if(undefined != result.extend.errorFields.email){
							//显示邮箱错误信息
							show_validate_msg("#email_add_input", "error", result.extend.errorFields.email);
						}
						if(undefined != result.extend.errorFields.empName){
							//显示员工名字的错误信息
							show_validate_msg("#empName_add_input", "error", result.extend.errorFields.empName); 
						}*/
					//} 
				}
			});
		});
	
/* 	$("#dev_modal_btn").click(function(){
		window.location.href="/ssm/views/device.jsp";
	}); */

	$(document).on("click",".search_btn",function (){
		//alert("edit");
		
		
		//1、查出部门信息，并显示部门列表
		//getDepts("#empUpdateModal select");
		//2、查出员工信息，显示员工信息
		getPsnDev($(this).attr("sea-id"));
		
		//3、把员工的id传递给模态框的更新按钮
		//$("#emp_update_btn").attr("edit-id",$(this).attr("edit-id"));
		$("#psnDevModal").modal({
			backdrop:"static"
		});
	});
	//查询每人名下设备信息
	function getPsnDev(name){
		$.ajax({
			url:"${APP_PATH}/getPsnDev",
			type:"POST",
			data:"name="+name,
			success:function(result){
				//alert("getPsnDev");
				$("#psnDev_table tbody").empty();
				var psnDev = result.extend.data;
				console.log(result.extend.data);
		/* 		$.each(emps,function(index,item){
					alert(item.name);
				}); */

				$.each(psnDev,function(index,item){
					var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
					var id = $("<td></td>").append(item.device.devId);
					//alert(item.name);
					var devSn = $("<td></td>").append(item.device.devSn);
					var devName = $("<td></td>").append(item.device.devName);
					var devAddr = $("<td></td>").append(item.device.devAddr);
					var devPrice = $("<td></td>").append(item.device.devPrice);
					var devDetail = $("<td></td>").append(item.device.devDetail);
					//var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
									//.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
					//为编辑按钮添加一个自定义的属性，来表示当前员工id
					//editBtn.attr("edit-name",item.name);
					var delPsnDevBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delPsnDev_btn")
									.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("移除");
					//为删除按钮添加一个自定义的属性来表示当前删除的员工id
					delPsnDevBtn.attr("delPsnDevId",item.device.devId);
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
						.append(delPsnDevBtn)
						.appendTo("#psnDev_table tbody");
				});
			}
		});
	}
	//移除个人下设备
	$(document).on("click",".delPsnDev_btn",function(){
		//alert("delPsnDev");
			var msg = "您真的确定要删除吗？\n\n请确认！";
			if (confirm(msg)==true){
				$.ajax({
					url: "${APP_PATH}/delPsnDev/"+$(this).attr("delPsnDevId"),
					type: "DELETE",
					success: function(result){
						//console.log(result);
							alert(result.extend.data);
							//刷新模态框
							//document.getElementById(".search_btn").click();

					}
				});
			}else{
				return false;
			}		
	});
	
	</script>
</body>
</html>