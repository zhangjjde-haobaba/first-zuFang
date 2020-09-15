<%--
  Created by IntelliJ IDEA.
  User: jiangyiwei
  Date: 2020-09-15
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        * { margin: 0; padding: 0; }
        a { text-decoration: none; }
        ul { list-style: none; }
        body,  html { height: 100%; font-family: "微软雅黑"; }
        .box { width: 100%; height: 600px; margin: 40px 0; }
        #container1,  #container2 { width: 100%; height: 100%; }
        #container3 { width: 80%; height: 100%; }
        .list { width: 20%; height: 100%; background: #eee; }
        .list li { height: 34px; line-height: 34px; padding-left: 20px; }
        .list li.active a { color: red; }
        .title { font-size: 14px; font-weight: bold; color: #cc5522; }
        .content { font-size: 13px; color: #333; margin-top: 6px; }
        .fl { float: left; }
    </style>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script src="http://api.map.baidu.com/api?v=2.0&ak=A1LU7iHS0avqQwPLAxbhKn0UYSQCuRVH"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.baiduMap.min.js"></script>
</head>
<body>
<div class="box">
    <div id="container3" class="container fl"></div>
    <ul class="list fl">
        <li> <a href="javascript:void(0)">东方龙湖苑</a> </li>
        <li> <a href="javascript:void(0)">中粮祥云</a> </li>
        <li> <a href="javascript:void(0)">水岸风华</a> </li>
        <li> <a href="javascript:void(0)">龙湖新壹城</a> </li>
        <li> <a href="javascript:void(0)">龙庭水岸</a> </li>
    </ul>
</div>
<div class="box">
    <div id="container1"></div>
</div>
<div class="box">
    <div id="container2"></div>
</div>
<script type="text/javascript">
    var points = [{
        id: 1,
        lng: 118.895689,
        lat: 31.918567,
        title: "东方龙湖苑",
        content: ["地址：南京市江宁区龙眠大道588号"]
    }, {
        id: 2,
        lng: 118.897402,
        lat: 31.915718,
        title: "中粮",
        content: ["地址：南京市江宁区鹏山路28号"]
    }, {
        id: 3,
        lng: 118.901959,
        lat: 31.913939,
        title: "水岸风华",
        content: ["地址：南京市江宁区龙眠大道618号"]
    }, {
        id: 4,
        lng: 118.903811,
        lat: 31.912809,
        title: "龙湖新壹城",
        content: ["地址：南京市江宁区南京交院2号出口"]
    }, {
        id: 5,
        lng: 118.904656,
        lat: 31.90294,
        title: "龙庭水岸",
        content: ["地址：南京市江宁区龙眠大道668号"]
    }];

    new BaiduMap({
        id: "container1",
        level: 16,
        titleClass: "title",
        contentClass: "content",
        centerPoint: { // 地图中心点经纬度
            lng: 118.903811,
            lat: 31.912809
        },
        index: -1,
        points: points,
        showLabel: true
    });

    new BaiduMap({
        id: "container2",
        level: 16,
        type: ["地图", "卫星"],
        width: 320,
        height: 70,
        titleClass: "title",
        contentClass: "content",
        showMarkPanorama: true,
        mapStyle: "light",
        icon: {
            url: "img/marker.png",
            width: 25,
            height: 96
        },
        centerPoint: { // 地图中心点经纬度
            lng: 118.903811,
            lat: 31.912809
        },
        index: 0,
        points: points
    });

    var map = new BaiduMap({
        id: "container3",
        level: 16, //  选填--地图级别--(默认15)
        zoom: true, // 选填--是否启用鼠标滚轮缩放功能--(默认false)
        type: ["地图", "卫星", "三维"], // 选填--显示地图类型--(默认不显示)
        width: 320, // 选填--信息窗口width--(默认自动调整)
        height: 70, // 选填--信息窗口height--(默认自动调整)
        titleClass: "title",
        contentClass: "content",
        showPanorama: true, // 是否显示全景控件(默认false)
        showMarkPanorama: true, // 是否显示标注点全景图(默认false)
        showLabel: false, // 是否显示文本标注(默认false)
        mapStyle: "normal", // 默认normal,可选dark,light
        icon: { // 选填--自定义icon图标
            url: "img/marker2.png",
            width: 34,
            height: 94
        },
        centerPoint: { // 中心点经纬度
            lng: 118.903811,
            lat: 31.912809
        },
        index: 3, // 开启对应的信息窗口，默认-1不开启
        animate: true, // 是否开启坠落动画，默认false
        points: points, // 标注点--id(唯一标识)
        callback: function(id) {
            $(".list").find("li").eq(id - 1).addClass("active").siblings().removeClass("active");
        }
    });

    var data = map.getPosition();
    var $li = $(".list").find("li");

    $li.each(function(i) {
        $(this).data("id", i + 1);
    }).on("click", function() {
        map.openInfoWindow($(this).data("id"));
        $(this).addClass("active").siblings().removeClass("active");
    }).eq(data.id - 1).addClass("active");
</script>
</body>
</html>
