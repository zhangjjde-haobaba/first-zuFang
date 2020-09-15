<%--
  Created by IntelliJ IDEA.
  User: jiangyiwei
  Date: 2020-09-15
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/首页.css" rel="stylesheet" />
</head>
<body>
<!-- 顶部导航栏 -->
<div class="head">
    <img src="img/logo.jpg" id="pic1"/>
    <!-- <input type="button" id="btn1" value="南京"/>
    <div class="cust_list_box">
        <ul>
            <li>
                <a href="#">北京</a>
            </li>
            <li>
                <a href="#">上海</a>
            </li>
            <li>
                <a href="#">深圳</a>
            </li>
            <li>
                <a href="#">杭州</a>
            </li>
            <li>
                <a href="#">南京</a>
            </li>
            <li>
                <a href="#">成都</a>
            </li>
            <li>
                <a href="#">武汉</a>
            </li>
            <li>
                <a href="#">广州</a>
            </li>
            <li>
                <a href="#">天津</a>
            </li>
        </ul>
    </div> -->
    <ul>
        <li><a href="#">首页</a></li>
        <li><a href="">租房</a></li>
        <!-- <li><a href="#">自如寓</a></li>
        <li><a href="#">自如驿</a></li> -->
        <!-- <li><a href="#">民宿</a></li> -->
        <li><a href="#">服务</a></li>
        <li><a href="#">生活</a></li>
        <li><a href="#">启悦会</a></li>
        <li><a href="#">加入我们</a></li>
        <li><a href="#" id="app">APP下载</a></li>
        <!-- <img src="img/二维码.png" id="erweima" display="none"/> -->
        <li id="box1"><a href="#">成为房东</a></li>
        <li><span><a href="#">登陆</a></span>&nbsp;|&nbsp;<span><a href="#">注册</a></span></li>
    </ul>
</div>
<!-- 主体背景页 -->
<div class="mainbody">
    <p class="title">品质租房选自如</p><br>
    <p class="dutytitle">8年, 9城, 近50万业主, 300万自如客的选择</p><br>
    <ul>
        <li><a href="#">全部</a></li>
        <li><a href="#">合租</a></li>
        <li><a href="#">整租</a></li>
    </ul>
    <div class="search">
        <form action="queryHome" method="get">
            <input type="search" placeholder="请输入区域,地铁站,小区名开始找房" name="inputContent" style="outline: none;"/><button class="btn1" id="map" style="outline: none;"><img src="img/地图.jpg" width="30px" height="30px"/>地图找房</button><input type="submit" value = "开始找房" class="btn2" style="outline: none;width: 100px;height:58px ;"/>
        </form>
    </div>
</div>
<!-- 中间部分 -->
<div class="middle">
    <ul>
        <li class="controller">
            <img src="img/middle1.jpg"/>
            <div class="rent">
                <h3>租房</h3>
                <span>合租/整租</span>
            </div>
        </li>
        <li class="controller1">
            <img src="img/middle2.jpg"/>
            <div class="service">
                <h3>服务</h3>
                <span>保洁/搬家/维修</span>
            </div>
        </li>
        <li class="controller2">
            <img src="img/middle3.jpg"/>
            <div class="life">
                <h3>生活</h3>
                <span>生活社区/全屋智能</span>
            </div>
        </li>
        <li class="controller3">
            <img src="img/middle4.jpg"/>
            <div class="host">
                <h3>业主</h3>
                <span>出租/合作/房东</span>
            </div>
        </li>
    </ul>
</div>
<!-- 优质租住环境 -->
<div class="goodenv">
    <ul>
        <li><img src="img/左图标.png" width="40px" height="40px"/></li>
        <li><h2>优质租住环境</h2></li>
        <li><img src="img/右图标.png" width="40px" height="40px"/></li>
    </ul>
    <h3>/带来全新环保体验/</h3>
</div>
<!-- 图片合并 -->
<div class="back" style="position:relative;z-index:1;<!-- top:100;left:20; -->">
    <img src="img/睡觉.jpg" width="100%"/>
</div>
<div class="surface" style="position:absolute;z-index:2;<!-- top:100;left:20; -->">
    <img src="https://webimg.ziroom.com/c26467e3-ba7f-497e-94b9-02e48088becc.png" width="800px"/>
    <p>优于国标E1级板材&nbsp;|&nbsp;环保认证装修材料&nbsp;|&nbsp;41道关键工序&nbsp;|&nbsp;空气密闭检测&nbsp;|&nbsp;空置30天入住</p>
</div>

<section class="playContainer">
    <li class="playBtn">
        <a href="#" title="start">Start</a>
    </li>
    <li class="pauseBtn">
        <a href="#" title="pause">Pause</a>
    </li>
    <li class="stopBtn">
        <a href="#" title="stop">Stop</a>
</section>
<!-- 全面租住服务 -->
<div class="comprerent">
    <ul>
        <li><img src="img/左图标.png" width="40px" height="40px"/></li>
        <li><h2>全面租住服务</h2></li>
        <li><img src="img/右图标.png" width="40px" height="40px"/></li>
    </ul>
    <h3>/简化日常繁琐生活/</h3>
</div>
<!-- 手动轮播图 -->
<div class="onepiece">
    <ul class="num">
        <li class="first"><span class="ini1">01</span></li>
        <li><span class="ini2">02</span></li>
        <li><span class="ini3">03</span></li>
    </ul>
    <ul class="text">
        <li class="second"><span>自如保洁</span></li>
        <li><span>自如搬家</span></li>
        <li><span>自如家修</span></li>
    </ul>
    <ul class="assimg">
        <li style="display: block;"><img src="img/lun1.jpg" width="800px" height="600px"/></li>
        <li><img src="img/lun2.jpg" width="800px" height="600px"/></li>
        <li><img src="img/lun3.jpg" width="800px" height="600px"/></li>
    </ul>
</div>
<ul class="document">
    <li style="display: block;">
        <div class="txt">
            <h3>自如保洁</h3>
            <h4>下一刻，明亮如新</h4>
            <span>自如旗下专业保洁品牌，成立八年至今，形成</span><br>
            <span>专属清洁服务标准——人员严选，工具放</span><br>
            <span>心，流程规范。为用户提供日常保洁，玻璃清</span><br>
            <span>洁等多样保洁产品，持续为市场提供高品质保</span><br>
            <span>洁服务。</span>
        </div>
    </li>
    <li>
        <div class="txt">
            <h3>自如搬家</h3>
            <h4>每一次搬家都珍贵</h4>
            <span>自2014年上线起，始终坚持：每一项服务标</span><br>
            <span>准清晰明确，每个物件精心打包安放。成立4</span><br>
            <span>年来，打磨和研发多项产品满足用户个性化搬</span><br>
            <span>家需求，目前已覆盖北京，上海，天津等9个</span><br>
            <span>城市。</span>
        </div>
    </li>
    <li>
        <div class="txt">
            <h3>自如家修</h3>
            <h4>用心守护，美好如初</h4>
            <span>自如旗下O2O生活服务产品，旨在为客户提</span><br>
            <span>供“专业便捷,安全透明”的全能维修。月交付</span><br>
            <span>15万+，拥有超过1400人的自如巧匠，覆盖装</span><br>
            <span>修后市场，家电售后全生态，率先实现标准化</span><br>
            <span>和数据化管理，让客户无后顾之忧。</span>
        </div>
    </li>
</ul>
<!-- 租住体验 -->
<div class="comprerent">
    <ul>
        <li><img src="img/左图标.png" width="40px" height="40px"/></li>
        <li><h2>丰富租住体验</h2></li>
        <li><img src="img/右图标.png" width="40px" height="40px"/></li>
    </ul>
    <h3>/聚合有趣青年玩转城市生活/</h3>
</div>
<div class="box">
    <div class="container">
        <img src="img/p1.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p2.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p3.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p4.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p9.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p5.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p6.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p7.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p8.jpg"/>
        <div class="mask"></div>
    </div>
    <div class="container">
        <img src="img/p10.jpg"/>
        <div class="mask"></div>
    </div>
</div>
<!-- 尾部 -->
<div class="root">
    <hr>
    <ul class="floor1">
        <li><a href="#">联系自如</a></li>
        <li><a href="#">加入我们</a></li>
        <li><a href="#">自如采购</a></li>
        <li><a href="#">隐私政策</a></li>
        <li><a href="#">网站地图</a></li>
    </ul>
    <hr>
    <ul class="floor1">
        <li><a href="#">友情链接</a></li>
        <li><a href="#">热门区域</a></li>
        <li><a href="#">地铁周边</a></li>
        <li><a href="#">热门城市</a></li>
        <li><a href="#">最新房源</a></li>
    </ul>
    <ul class="floor1 special">
        <li><a href="#">南京房产网</a></li>
        <li><a href="#">南京房产</a></li>
        <li><a href="#">大连房产网</a></li>
        <li><a href="#">大连房产</a></li>
    </ul>
    <div class="floor3">
        <img src="img/logo.png" width="300px" height="100px"/>
        <div class="floor2">
            <p>天津创想信息科技有限公司Copyright&copy;2020 ziroom.com版权所有</p>
            <p>北京公安网备 11010502035891号-2</p>
            <p>违法和不良信息举报电话：400100111-9 违法和不良信息举报邮箱：jubao@ziroom.com</p>
        </div>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-3.5.1.min.js"></script>
<script>
    var index = 0;
    $(function(){
        $("#btn1").mouseover(function(){
            $(".cust_list_box").css("display","block");
        })
        $("#btn1").mouseout(function(){
            $(".cust_list_box").css("display","none");
        })
        $(".text li").click(function(){
            // $(this).index();
            $(".assimg li").eq($(this).index()).show().siblings().hide();
            $(".document li").eq($(this).index()).show().siblings().hide();
        })

        $(".playBtn").click(function(){
            mywindow=window.open("https://media3.ziroom.com/ziroom_breath.mp4","newwindow","height=500,width=800,top=400, left=200, toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no")
        })
        $(".stopBtn").click(function(){
            mywindow.close();
        })
        $("#map").click(function(){
            window.location.href = "jumpToMap";
        })

    })
</script>
</html>
