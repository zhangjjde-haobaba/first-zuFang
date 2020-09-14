<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>易租注册页</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/log_reg.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/regist.css" />
	</head>
	<body>
		<input type="hidden" value="SMS_202545446" id="templateCode"/>

		<!-- 公共的头部导航 -->
		<header id="top_nav">
			<div class="inner_nav clear">
				<div class="f_l">
					<a href="#">
						<img src="${pageContext.request.contextPath}/static/img/zuixinbailogo.PNG" alt="一号店" style="margin-top: 10px;" />
					</a>
				</div>

			</div>
		</header>

		<!--注册网页主体-->
		<section id="sec_form">
			<div class="inner_form">
				<div class="sec_form_tag">
					<h3 class="sec_form_header"><span class="hx">—————</span>&nbsp;&nbsp;<span class="wz">新用户注册</span>&nbsp;&nbsp;<span
						 class="hx">—————</span></h3>
				</div>
				<form method="get" action="#">
					<div class="sec_form_item">
						<input type="text" placeholder="手机号" name="userPhone" id="phoneNum" required pattern="^1[3589]\d{9}$" />
					</div>
					<div class="clear">
						<div class="f_l sec_form_item valid_item">
							<input type="text" placeholder="验证码" id="yzm" required pattern="^\d{6}$" />
						</div>
						<input type="button" value="获取验证码" id="getYzm" class="f_r valid_btn" />
					</div>
					<div class="sec_form_item">
						<input type="password" placeholder="设置密码" id="setPwd" name="userPassword" required pattern="^\w{6,12}" />
					</div>
					<div class="sec_form_item">
						<input type="password" placeholder="确认密码" id="ensurePwd" required pattern="^\w{6,12}" />
					</div>
					<input type="submit" class="sec_form_btn" value="注册" />
					<div class="sec_reg_click">
						<input type="checkbox" id="reg_check" />&nbsp;&nbsp;<label for="reg_check">我已阅读并同意</label><a href="#" class="agree">《易租用户协议》</a><span>及</span><a
						 href="#" class="agree">《易租隐私政策》</a>
					</div>

					<div class="control-group clearfix tc bottom">
						已有账号？现在就 <a href="login.html" class="org" id="toSignup">登录</a>
					</div>
				</form>
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
			var templateCode = $("#templateCode").val();
			// 初始页面让注册按钮失效
			$(".sec_form_btn").css("background-color", "#999");
			$(".sec_form_btn").attr("disabled", true);

			// 多选按钮选中，让按钮可用
			$("#reg_check").click(function() {
				if ($(this).prop("checked")) {
					$(".sec_form_btn").css("background-color", "#FFA000");
					$(".sec_form_btn").attr("disabled", false);
				} else {
					$(".sec_form_btn").css("background-color", "#999");
					$(".sec_form_btn").attr("disabled", true);
				}
			})

			// 注册页面的友好提示
			$(".sec_form_btn").click(function() {
				// 用户名提示
				var phoneNum = document.getElementById("phoneNum");
				if (phoneNum.validity.valueMissing) {
					phoneNum.setCustomValidity("手机号不能为空");
				} else if (phoneNum.validity.patternMismatch) {
					phoneNum.setCustomValidity("手机号不符合要求，必须是正确的11位手机号");
				} else {
					phoneNum.setCustomValidity("");
				}

				// 验证码提示
				var yzm = document.getElementById("yzm");
				if (yzm.validity.valueMissing) {
					yzm.setCustomValidity("验证码不能为空");
				} else if (yzm.validity.patternMismatch) {
					yzm.setCustomValidity("验证码不符合要求，必须是6位数字");
				} else {
					yzm.setCustomValidity("");
				}
				// 密码提示
				var setPwd = document.getElementById("userPwd");
				if (setPwd.validity.valueMissing) {
					setPwd.setCustomValidity("密码不能为空");
				} else if (setPwd.validity.patternMismatch) {
					setPwd.setCustomValidity("密码不符合要求，必须是6-12位字母数字或者下划线");
				} else {
					setPwd.setCustomValidity("");
				}
				// 确认密码提示
				var ensurePwd = document.getElementById("ensurePwd");
				if (ensurePwd.validity.valueMissing) {
					ensurePwd.setCustomValidity("确认密码不能为空");
				} else if (ensurePwd.validity.patternMismatch) {
					ensurePwd.setCustomValidity("确认密码不符合要求，必须是6-12位字母数字或者下划线");
				} else {
					ensurePwd.setCustomValidity("");
				}


			})

			// 表单提交，确认密码和设置密码必须一致
			$("form").submit(function() {
				var userPwd = $("#setPwd").val();
				var ensurePwd = $("#ensurePwd").val();
				if (userPwd != ensurePwd) {
					alert("两次输入密码不一致，请重新设置密码！！！");
					// 阻止表单提交
					return false;
				}
				// 9月13日 点击注册按钮，把用户信息插入到数据库中，注册成功
				$.ajax({
					"url" : "register",
					"type" : "post",
					"data" : $("form").serialize(),
					"dataType" : "json",
					"success" : function (data) {
						if (data == true) {
							alert("注册成功，请登录！");
							window.location.href = "toLogin";
						} else {
							alert("注册失败");
						}

					}
				})
				return false;
			})

			// 获取验证码的倒计时
			var timer;
			var checkTime = 10;
			var rep = /^1[3589]\d{9}$/;
			$(".valid_btn").click(function() {
				// 验证手机号是不是可以收验证码
				var phoneNum = $("#phoneNum").val();
				if (phoneNum == "" || rep.test(phoneNum) == false) {
					alert("手机号输入非法！！！");
					return;
				}

				// 让倒计时按钮失效
				$(this).attr("disabled", true);
				$(this).css("background-color", "#999");
				timer = setInterval(function() {
					// 开始倒计时
					checkTime--;
					if (checkTime == 0) {
						$(".valid_btn").val("获取验证码");
						$(".valid_btn").css("background-color", "#666");
						$(".valid_btn").attr("disabled", false);
						clearInterval(timer);
						checkTime = 10;
					} else {
						$(".valid_btn").val("(" + checkTime + ")秒后重发");
					}
				}, 1000);
				// 9月12日 增加点击事件，增加验证码
				$.getJSON("send?phoneNum=" + phoneNum + "&templateCode=" + templateCode,function (data) {
					if (data){
						// 错误定位
						// alert(phoneNum);
						// alert(templateCode);
						alert("发送验证码成功！")
					}


				})



			})
		})
	</script>
</html>
