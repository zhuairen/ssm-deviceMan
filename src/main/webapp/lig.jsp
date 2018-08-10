<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="<%=request.getContextPath()%>/static/ligerUI/skins/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="<%=request.getContextPath()%>/static/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/ligerUI/js/core/base.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/static/ligerUI/js/plugins/ligerGrid.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="maingrid"></div>
</body>
<script type="text/javascript">
          $(function(){
              $("#maingrid").ligerGrid({
                  width:600,
                  columns:[
                      {display:"学号",name:"stuNo"},
                      {display:"姓名",name:"stuName"},
                      {display:"性别",name:"stuSex"},
                      {display:"年龄",name:"stuAge"}
                  ],
                  data : {Rows:data.data},
              });
          });
          var maingrid = null;
          $.ajax({
        	  type:"GET",
				url:"<%=request.getContextPath()%>/init",
				data:data,
				dataType:"json",
				success:function(data) {
					//if(data.result == 1 && data.data != ""){
						maingrid = $("#maingrid").ligerGrid({
						columns : [{display : '考试编号',name: 'examNo',width : 120},
								   {display : '考试名称',name: 'examName',width : 230},
								   {display : '试卷名称',name : 'paperName',width : 230},
								   {display : '所属专业',name : 'busitype',width : 100},
								   {display : '考试日期',name : 'examYmd',width : 110},
								   {display : '答题时长',name : 'anstime',width : 100},
								   {display : '分数',name : 'score',width : 100}],
						checkbox:false,
						width : '96.5%',
						height: 600,
						data : {Rows:data.extend.pageInfo.list},
						pageSizeOptions : [ 15, 20, 25, 30 ]							
						});
					//}
          });
      </script>
</html>