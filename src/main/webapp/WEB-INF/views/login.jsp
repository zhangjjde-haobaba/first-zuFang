<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>易租登录页</title>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/log_reg.css" />
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css" />
	</head>
	<body>
		<!-- 公共的头部导航 -->
		<header id="top_nav">
			<div class="inner_nav clear">
				<div class="f_l">
					<a href="#">
						<img src="${pageContext.request.contextPath}/static/img/zuixinbailogo.PNG" id="logo" class="f_l" style="margin-left: 170px;width: 200px;"/>
					</a>
				</div>

			</div>
		</header>
		<!--登录网页主体-->
		<section id="sec_body">
			<div class="inner_body clear">
				<!-- <img src="img/loadimg.jpg" class="f_l" /> -->
				<div class="f_r form_login">
					<form action="#" method="get">
						<div class="sec_form_tag clear">
							<h3 class="sec_form_header"><span class="hx">—————</span>&nbsp;&nbsp;<span class="wz">欢迎用户登录</span>&nbsp;&nbsp;<span
								 class="hx">—————</span></h3>
							<!-- <a href="#" class="f_r">注册账号</a> -->
						</div>
						<div class="sec_form_item">
							<label class="userHead" for="name"></label>
							<input type="text" id="name" placeholder="邮箱/手机/用户名" pattern="^\w{2,8}@[a-z0-9]{1,5}\.[a-z]{1,5}$|^1[3589]\d{9}$|[\u4e00-\u9fa5]{2,4}$"
							 required />
						</div>
						<div class="sec_form_item">
							<label class="userLock" for="pwd"></label>
							<input type="password" id="pwd" placeholder="密码" required />
						</div>
						<div class="sec_form_auto clear">
							<a href="#" class="f_l"><input type="checkbox" id="auto" />&nbsp;&nbsp;<label for="auto">一周内免登录</label></a>
							<a href="https://passport.ziroom.com/forget_password.html" class="f_r forget_Pwd">忘记密码?</a>
						</div>
						<input type="submit" value="登&nbsp;&nbsp;录" class="sec_form_btn" />
					</form>
					<!-- TODO 协议交互 -->
					<div class="control-group clearfix">
						<div class="ziroom-login-confrim"><span class="login_is_agree">登录即代表同意</span><a href="https://special.ziroom.com/2018/tpl201810/index.html?id=2216"
							 target="_blank" class="agree">《易租用户协议》</a><span>及</span><a href="https://special.ziroom.com/2018/tpl201810/index.html?id=1568"
							 target="_blank" class="agree">《易租隐私政策》</a></div>
					</div>

					<div class="control-group clearfix tc bottom">
						没有账号？现在就 <a href="toRegist" id="toSignup">注册</a>
					</div>
					<!--/control-group-->
				</div>
			</div>
		</section>
		<!--尾部-->
		<footer>
			<div id="footer">
				<div class="area">
					<div class="clearfix">
						<div class="glbLeft">
							<dl class="fList">
								<dt>关于我们</dt>
								<dd>
									<a href="#">关于易租</a>
									<a href="#">联系易租</a>
									<a href="#">加入易租</a>
								</dd>
							</dl>
							<dl class="fList">
								<dt>易租业务</dt>
								<dd>
									<a href="#">业务体系</a>
									<a href="#">易租产品</a>
									<a href="#">易租服务</a>
								</dd>
							</dl>
							<dl class="fList">
								<dt>关注易租</dt>
								<dd>
									<a href="#">易租客微信</a>
									<a href="#">下载app</a>
								</dd>
							</dl>
						</div>

						<div class="glbRight">

							<div class="img">
								<img src="${pageContext.request.contextPath}/static/img/ewmm.png">
								<p>关注易租客微信</p>
							</div>
							<div class="img">
								<img src="${pageContext.request.contextPath}/static/img/ewmm.png">
								<p>下载易租app</p>
							</div>
							<!--/img-->
						</div>
						<!--/glbRight-->
					</div>

					<div class="footerBottom" >
						<img src="${pageContext.request.contextPath}/static/img/dengluzhuanyonglogo.PNG" style="width: 160px;height: 40px;float: left;">
						<div class="" style="float: left;">
							<p style="float: left;">南京易租信息科技有限公司 Copyright@2017 yizu.com 版权所有 苏ICP备16015349号-1</p>
							<p>联系客服：易租客微信 周一至周日09:00-22:00</p>
						</div>
						
					</div>
				</div>
			</div>
		</footer>
	</body>
	<script src="js/jquery-3.5.1.min.js"></script>
	<script>
		$(function() {
			// 友好提示优化，改变浏览器的自带提示框信息
			// 如果form表中存在submit按钮，自带提交表单，如果click事件，没法监听表单提交
			$(".sec_form_btn").click(function() {
				// 用户名提示
				var userName = document.getElementById("name");
				if (userName.validity.valueMissing) {
					userName.setCustomValidity("用户名不能为空");
				} else if (userName.validity.patternMismatch) {
					userName.setCustomValidity("用户名不符合要求，必须是正确的邮箱或手机号或中文名");
				} else {
					userName.setCustomValidity("");
				}

				// 密码提示
				var userPwd = document.getElementById("pwd");
				if (userPwd.validity.valueMissing) {
					userPwd.setCustomValidity("密码不能为空");
				} else if (userPwd.validity.patternMismatch) {
					userPwd.setCustomValidity("密码不符合要求，必须是6-12位字母数字或者下划线");
				} else {
					userPwd.setCustomValidity("");
				}
			})
		})
	</script>
</html>
