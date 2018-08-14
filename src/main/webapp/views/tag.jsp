<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<meta charset="utf-8" />
    <link rel="stylesheet" href="${APP_PATH }/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
    <script src="${APP_PATH }/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style type="text/css">
        html, body {width:100%;height:50%;}
        .bg {display: table;width: 100%;height: 50%;padding: 84px 0;text-align: center;color: #fff;background-size: cover;}
        .my-navbar {padding:15px 0;transition: background 0.5s ease-in-out, padding 0.5s ease-in-out;}
        .my-navbar a{background:transparent !important;color:#fff}
        .my-navbar a:hover {color:#45bcf9 !important;background:transparent;outline:0}
        .my-navbar a {transition: color 0.5s ease-in-out;}
        .top-nav {padding:0;background:#000;}
        button.navbar-toggle {background-color:#fbfbfb;}
        button.navbar-toggle > span.icon-bar {background-color:#dedede}
    </style>
</head>
<body>
    <nav class="navbar navbar-fixed-top my-navbar" role="navigation" style="background:#000!important;">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#example-navbar-collapse">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" onclick="person()">首页</a>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li >
                    	<a id="search" onclick="searchAndDev()">搜索并绑定</a>
                    </li>
                    <li>
                    	<a  id="deviice" onclick="device()">查看设备</a>
                    </li>
                    <li>
                        <a onclick="echarts()">设备类型统计</a>
                    </li>
                    <li>
                        <a onclick="echarts()">设备地区分布</a>
                    </li>
                    <li>
                        <a href="${APP_PATH }/outLogin ">注销账户</a>
                    </li>
                    <li>
                        <a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎您，尊敬的 ${sessionScope.person.name}</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
     <div class="bg" id="index">
     	<%-- <%@ include file="index.jsp"%> --%>
     	<iframe id="frame" stytle="position:absolute;top:100px;" width="1122px" height="1200px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<%=request.getContextPath()%>/views/index.jsp"></iframe>
     </div>

    <script>
        $(window).scroll(function () {
            if ($(".navbar").offset().top > 30) {$(".navbar-fixed-top").addClass("top-nav");
            }else {$(".navbar-fixed-top").removeClass("top-nav");}
        })</script>
</body>
	<script type="text/javascript">
/* 	 	$("#in").click(function(){
			$("#index").location.href="/ssm/views/device.jsp";
		}); */

		function device(){
			//console.log($("#frame")["0"].src);
			$("#frame")["0"].src=`<%=request.getContextPath()%>/views/device.jsp`;
		}
		function echarts(){
			//console.log($("#frame")["0"].src);
			$("#frame")["0"].src=`<%=request.getContextPath()%>/views/tongji.jsp`;
		}
		function person(){
			//console.log($("#frame")["0"].src);
			$("#frame")["0"].src=`<%=request.getContextPath()%>/views/index.jsp`;
		}
		function searchAndDev(){
			//console.log($("#frame")["0"].src);
			$("#frame")["0"].src=`<%=request.getContextPath()%>/views/search.jsp`;
		}
	</script>
</html>
