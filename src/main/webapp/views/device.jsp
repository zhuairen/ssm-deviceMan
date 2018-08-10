<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>设备显示页面</title>
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
</body>
<!-- 搭建显示页面 -->
	<div class="container">
		<!-- 标题 -->
		<div class="row">
			<div class="col-md-12">
				<h1>欢迎尊敬的    ${sessionScope.person.name}</h1>
			</div>
		</div>
		<!-- 按钮 -->
		<div class="row">
			<div class="col-md-4 col-md-offset-8">
				<button class="btn btn-primary" id="psn_modal_btn">查看人员</button>
				<button class="btn btn-primary" id="dev_add_modal_btn">新增设备</button>
				<button class="btn btn-danger" id="dev_del_modal_btn">删除</button>
			</div>
		</div>
		<!-- 显示表格数据 -->
		<div class="row">
			<div class="col-md-12">
				<table class="table table-hover" id="emps_table">
					<thead>
						<tr>
<!-- 							<th>#</th>
							<th>devId</th>
							<th>devSn</th>
							<th>devName</th>
							<th>devAddr</th>
							<th>devPrice</th>
							<th>devDetail</th> -->
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
	
	<!-- 模态框 -->
<div class="modal fade" id="devAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">新增设备</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label class="col-sm-2 control-label">devSn</label>
		    <div class="col-sm-5">
		      <input type="text" name="devSn" class="form-control" id="devSn_add_input" placeholder="设备标识">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">devName</label>
		    <div class="col-sm-10">
		      <input type="text" name="devName" class="form-control" id="devName_add_input" placeholder="设备名">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">devAddr</label>
		    <div class="col-sm-10">
		      <input type="text" name="devAddr" class="form-control" id="devAddr_add_input" placeholder="设备所在地">
		      <span class="help-block"></span>
		    </div>
		  </div>
 		  <div class="form-group">
		    <label class="col-sm-2 control-label">devPrice</label>
		    <div class="col-sm-10">
		      <input type="number" name="devPrice" class="form-control" id="devPrice_add_input" placeholder="设备价值">
		      <span class="help-block"></span>
		    </div>		    
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">devDetail</label>
		    <div class="col-sm-10">
				<input type="text" name="devDetail" class="form-control" id="devDetail_add_input" placeholder="设备标注">
		      	<span class="help-block"></span>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="button" class="btn btn-primary" id="dev_save_btn">保存</button>
      </div>
    </div>
  </div>
</div>


	<!-- 修改模态框 -->
<div class="modal fade" id="devUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">修改设备</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal">
		  <div class="form-group">
		    <label class="col-sm-2 control-label">devSn</label>
		    <div class="col-sm-5">
		      <input type="text" name="devSn" class="form-control" id="devSn_update_input" placeholder="设备标识">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">devName</label>
		    <div class="col-sm-10">
		      <input type="text" name="devName" class="form-control" id="devName_update_input" placeholder="设备名">
		      <span class="help-block"></span>
		    </div>
		  </div>
		  <div class="form-group">
		    <label class="col-sm-2 control-label">devAddr</label>
		    <div class="col-sm-10">
		      <input type="text" name="devAddr" class="form-control" id="devAddr_update_input" placeholder="设备所在地">
		      <span class="help-block"></span>
		    </div>
		  </div>
 		  <div class="form-group">
		    <label class="col-sm-2 control-label">devPrice</label>
		    <div class="col-sm-10">
		      <input type="number" name="devPrice" class="form-control" id="devPrice_update_input" placeholder="设备价值">
		      <span class="help-block"></span>
		    </div>		    
		  </div>

		  <div class="form-group">
		    <label class="col-sm-2 control-label">devDetail</label>
		    <div class="col-sm-10">
				<input type="text" name="devDetail" class="form-control" id="devDetail_update_input" placeholder="设备标注">
		      	<span class="help-block"></span>
		    </div>
		  </div>
		</form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="button" class="btn btn-primary" id="dev_update_btn">修改</button>
      </div>
    </div>
  </div>
</div>
	
	<script type="text/javascript">
	var totalRecord,currentPage;
	$(function(){
		to_page(1);
	});
	
	function to_page(pn){
		$.ajax({
			url:"${APP_PATH}/initDev",
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
		var devices = result.extend.pageInfo.list;
/*  		$.each(devices,function(index,item){
			alert(item.devId);
		});  */

		$.each(devices,function(index,item){
			var checkBoxTd = $("<td><input type='checkbox' class='check_item'/></td>");
			var devId = $("<td></td>").append(item.devId);
			//alert(item.name);
			var devSn = $("<td></td>").append(item.devSn);
			var devName = $("<td></td>").append(item.devName);
			var devAddr = $("<td></td>").append(item.devAddr);
			var devPrice = $("<td></td>").append(item.devPrice);
			var devDetail = $("<td></td>").append(item.devDetail);
			var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
							.append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("修改");
			//为编辑按钮添加一个自定义的属性，来表示当前员工id
			editBtn.attr("edit-id",item.devId);
			//var delBtn =  $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
							//.append($("<span></span>").addClass("glyphicon glyphicon-trash")).append("查看");
			//为删除按钮添加一个自定义的属性来表示当前删除的员工id
			//delBtn.attr("del-id",item.name);
			//var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
			//var delBtn = 
			//append方法执行完成以后还是返回原来的元素
			$("<tr></tr>").append(checkBoxTd)
				.append(devId)
				.append(devSn)
				.append(devName)
				.append(devAddr)
				.append(devPrice)
				.append(devDetail)
				.append(editBtn)
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
	
	//点击新增按钮弹出模态框。
	$("#dev_add_modal_btn").click(function(){
		//alert(1);
		//清除表单数据（表单完整重置（表单的数据，表单的样式））
		reset_form("#devAddModal form");
		alert(1);
		//s$("")[0].reset();
		//发送ajax请求，查出部门信息，显示在下拉列表中
		//getDepts("#devAddModal select");
		//弹出模态框
		$("#devAddModal").modal({
			backdrop:"static"
		});
	});
	//清空表单样式及内容
	function reset_form(ele){
		$(ele)[0].reset();
		//清空表单样式
		$(ele).find("*").removeClass("has-error has-success");
		$(ele).find(".help-block").text("");
	}
	
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
			//alert($("#devAddModal form").serialize());
			//2、发送ajax请求保存员工
			$.ajax({
				url:"${APP_PATH}/addDevice",
				type:"POST",
				data:$("#devAddModal form").serialize(),
				success:function(result){
					//alert(result.msg);
					//alert(result);
					$("#devAddModal").modal('hide');
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
	//返回查看人员
	$("#psn_modal_btn").click(function(){
		window.location.href="/ssm/views/index.jsp";
	});
	$("#dev_del_modal_btn").click(function(){
		var devChecks = "";
		var del_idstr = "";
		$.each($(".check_item:checked"),function(){
			//this
			devChecks += $(this).parents("tr").find("td:eq(2)").text()+",";
			//组装员工id字符串
			del_idstr += $(this).parents("tr").find("td:eq(1)").text()+"-";
			//alert(devChecks);
		});
		//去除empNames多余的,
	 	devChecks = devChecks.substring(0, devChecks.length-1);
		//去除删除的id多余的-
		del_idstr = del_idstr.substring(0, del_idstr.length-1);
		alert(del_idstr);
		if(confirm("确认删除【"+devChecks+"】吗？")){
			//发送ajax请求删除
			$.ajax({
				url:"${APP_PATH}/delDev/"+296,
				type:"DELETE",
				success:function(result){
					alert(result.msg);
					//回到当前页面
					to_page(currentPage);
				}
			});
		} 
	});
	
	$(document).on("click",".edit_btn",function(){
		//alert($(this).attr("edit-id"));
		getDev($(this).attr("edit-id"));
		
		//1、查出部门信息，并显示部门列表
		//getDepts("#empUpdateModal select");
		//2、查出员工信息，显示员工信息
		//getEmp($(this).attr("edit-id"));
		
		//3、把员工的id传递给模态框的更新按钮
 		//$("#emp_update_btn").attr("edit-id",$(this).attr("edit-id"));
		$("#devUpdateModal").modal({
			backdrop:"static"
		}); 
	});
	//修改device查询数据
	function getDev(id){
		$.ajax({
			url:"${APP_PATH}/getDev",
			data:"id="+id,
			type:"POST",
			success:function(result){
				//console.log(result.extend.data);
				//替换模块中的值
				$("#devSn_update_input").val(result.extend.data.devSn);
				$("#devName_update_input").val(result.extend.data.devName);
				$("#devAddr_update_input").val(result.extend.data.devAddr);
				$("#devPrice_update_input").val(result.extend.data.devPrice);
				$("#devDetail_update_input").val(result.extend.data.devDetail);
			}
		});
	}
	//保存修改的数据
	//dev_update_btn
	$("#dev_update_btn").click(function(){
		alert("dev_update_btn");
	});
	</script>
</html>