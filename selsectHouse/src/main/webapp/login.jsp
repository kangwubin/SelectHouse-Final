<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<!-- saved from url=(0054)http://zfyxdj.xa.gov.cn/zfrgdjpt/sfrz.aspx?qy=07&aim=1 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<title>商品住房认购登记平台</title>
<link href="./LoginAndShow/main.css" rel="stylesheet">
<script src="./LoginAndShow/jquery.min.js.下载"></script>
<script src="./LoginAndShow/layer.js.下载"></script>
<link rel="stylesheet" href="./LoginAndShow/layer.css"
	id="layuicss-layer">
<script src="./LoginAndShow/main.js.下载"></script>
<script src="./LoginAndShow/data.js.下载"></script>
<link href="./LoginAndShow/style.css" rel="stylesheet">
<script src="./LoginAndShow/Valid_v5.3_min.js.下载"></script>
<style>
.validBig {
	width: 300px;
	top: 0px;
}

.validDiv {
	position: absolute;
	top: 0px;
}
</style>
<script type="text/javascript">
	function top() {
		window.location = "index.jsp";
	};
</script>
</head>
<body>
	<div class="aspNetHidden">
		<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE"
			value="rtXzWRRlKQ80ZKYTYEJ1142em0x98aq9eKvIqF+55mMTNvQ/1wG3k8VaFZitrY8XAOWZlyo3jRcr2mLAcS85JNiqSaJJI3u//EcPKFkRfaEyXojtivto/Qeh+FnwHOARxGr0znM9WAEuorZz9j0t4g==">
	</div>
	<link href="./LoginAndShow/header.css" rel="stylesheet">
	<div id="WUC_header_header70" class="header header07 top07">
		<img src="./LoginAndShow/topimg07.jpg">
	</div>
	<input type="hidden" name="hidQy" id="hidQy" value="07">
	<input type="hidden" name="hidAim" id="hidAim" value="1">
	<input type="hidden" name="hidYxbh" id="hidYxbh">
	<input type="hidden" name="hidMsg" id="hidMsg" value="">
	<input type="hidden" name="hidXmmc" id="hidXmmc">
	
	<!-- ---------------------------------------------------------------------------------- -->
	<form action="/selsectHouse/LoginServlet?method=purchaserLogin" method="post" onsubmit="return checkForm()">
	<div class="content bgwhite  sfyzDiv">
		<div class="prel tc pad_30 pad_b10">
			<span class="size18 color_e34156">欢迎访问XATU商品住房用户登录平台</span>
			<div class="fR size16 vm mag_r20 mag_b10 return_Btn weight700"
				onclick="window.location.href='index2.jsp'">首页</div>
			<div class="clear"></div>
		</div>
		<div class="grayLine"></div>
		<div class="bd bgFDF8EA prel pad_20 mag_t80 sfrzTip">
			<div class="size18 color_e34156" align="center">
				友情提示：请您正确输入姓名与密码进行登录...........</div>
		</div>
		<!-- JS判断不能为空 -->
	<!-- JS判断输入框---------------------------------------------------------------- -->
		<script type="text/javascript">
			function checkForm() {
				//alert("aa");
				/**校验用户名*/
				//1.获取用户输入的数据
				var uValue = document.getElementById("username").value;
				//alert(uValue);
				if (uValue == "") {
					//2.给出错误提示信息
					alert("用户名不能为空!");
					return false;
				}
				var pValue = document.getElementById("password").value;
				if(pValue==""){
					alert("密码不能为空!");
					return false;
				}
			}
		</script>
		<div align="center">
			<div style="width: 500px; margin: 0 auto;">
				<label for="username" style="font-size: 18px">证件号：</label>
				<div
					style="height: 35px; width: 400px; position: relative; display: inline">
					<input name="username" type="text" id="username"
						style="height: 30px; width: 350px; padding-right: 50px;">
					<span
						style="position: absolute; right: 18px; top: 2px; background-image: url(user.ico); height: 16px; width: 16px; display: inline-block;"></span>
				</div>
				<br /> <br /> <label for="password1" style="font-size: 18px">密&nbsp&nbsp&nbsp码：</label>
				<div
					style="height: 35px; width: 500px; position: relative; display: inline">
					<input name="password1" type="password" id="password"
						style="height: 30px; width: 350px; padding-right: 50px;">
					<span
						style="position: absolute; right: 16px; top: 2px; background-image: url(p.ico); height: 16px; width: 16px; display: inline-block;"></span>
				</div>
				<br /> <br />
				<div style="width: 426px; float: right;">
				<input type="button"  value="注册" onclick="window.location.href='register.jsp'" style="height: 30px; width: 400px; background-color: red;" />
				</div>
				<br /> <br />
				<div style="width: 426px; float: right;">
					<input type="submit" value="登录" 
						style="height: 30px; width: 400px; background-color: red;" />
				</div>
			</div>
		</div>
	</div>
	
	</form>
	<link href="./LoginAndShow/footer.css" rel="stylesheet">
<div class="w2017">
	<div style="width: 80%; height: 10px;"></div>
	<div class="footer" style="width:1200px; margin:auto">
		<div class="section">
			<div class="copyright">
				<div class="mark1"></div>
				<div class="link2017">
					<p style="font-size: 18px;">版权所有：@西安工业大学实习实训第4组</p>
					<p style="font-size: 18px;">
						网站标识码：8686868686<em></em> &nbsp;&nbsp;
					</p>
					<p style="font-size: 18px;">
						网站技术支持热线：029-8686866<em></em>工作日：9:00-12:00，14:00-18:00（夏令时：15:00-18:00）
					</p>
				</div>
			</div>
			<div class="clr"></div>
		</div>
	</div>
</div>
</body>
</html>