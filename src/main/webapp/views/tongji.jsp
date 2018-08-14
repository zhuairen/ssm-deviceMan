<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%
	pageContext.setAttribute("APP_PATH", request.getContextPath());
%>
</head>
<script type="text/javascript"
	src="${APP_PATH }/static/js/jquery-1.12.4.min.js"></script>
<script src="${APP_PATH}/static/js/echarts.min.js"></script>
</head>
<body>
	<div id="secondPieChart" style="width:90%; height:400px; position:absolute;left:100px;top:50px" ></div>
	<div id="map" style="width:90%; height:400px; position:absolute;left:100px;top:500px"></div>
</body>
<script type="text/javascript">
function loadOneColumn() {
    var myChart = echarts.init(document.getElementById('secondPieChart'));
    // 显示标题，图例和空的坐标轴
    myChart.setOption({
        color: ['#ff7d27', '#47b73d', '#fcc36e', '#57a2fd', "#228b22"],//饼图颜色
        title: {
            text: '设备类型及其数量统计',
            subtext: '',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            data: []
        },
        toolbox: {
            show: true,
            feature: {
                mark: { show: true },
                dataView: { show: true, readOnly: false },
                magicType: {
                    show: true,
                    type: ['pie', 'funnel'],
                    option: {
                        funnel: {
                            x: '25%',
                            width: '50%',
                            funnelAlign: 'center',
                            max: 1548
                        }
                    }
                },
                restore: { show: true },
                saveAsImage: { show: true }
            }
        },
        calculable: true,
        series: [{
            name: '设备数量及其比例',
            type: 'pie',
            radius: ['50%', '70%'],  //设置环形的空间大小            
            itemStyle: {
                normal: {
                    label: {
                        show: true
                    },
                    labelLine: {
                        show: false
                    }
                },
                emphasis: {
                    label: {
                        show: true,
                        position: 'center',
                        textStyle: {
                            fontSize: '20',
                            fontWeight: 'bold'
                        }
                    }
                }
            },
            data: []
        }]
    });
    myChart.showLoading();    //数据加载完之前先显示一段简单的loading动画
    var names = [];    //类别数组（用于存放饼图的类别）
    var brower = [];
    $.ajax({
        type: "get",
        url: "/ssm/searchDevEcharts",//请求数据的地址
        dataType: "json",        //返回数据形式为json
        success: function (result) {
            //请求成功时执行该函数内容，result即为服务器返回的json对象
            $.each(result.extend.data, function (index, item) {
                names.push(item.devName);    //挨个取出类别并填入类别数组 
                brower.push({                    
                    value: item.devNum,
                    name: item.devName
                });
            });
            myChart.hideLoading();    //隐藏加载动画
            myChart.setOption({        //加载数据图表                
                legend: {
                    data: names
                },
                series: [{
                    data: brower
                }]
            });
        },
        error: function (errorMsg) {
            //请求失败时执行该函数
            alert("图表请求数据失败!");
            myChart.hideLoading();
        }
    });
};
loadOneColumn();
</script>
</html>