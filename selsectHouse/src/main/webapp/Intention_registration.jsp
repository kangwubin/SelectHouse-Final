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
<script src="./LoginAndShow/Validform_v5.3_min.js.下载"></script>
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
	<div class="content bgwhite  sfyzDiv">
		<div class="prel tc pad_30 pad_b10">
			<span class="size18 color_e34156">身份验证</span>
			<div class="fR size16 vm mag_r20 mag_b10 return_Btn weight700"
				onclick="window.location.href='index.jsp'">首页</div>
			<div class="clear"></div>
		</div>
		<div class="grayLine"></div>
		<div class="bd bgFDF8EA prel pad_20 mag_t80 sfrzTip">
			<div class="floatTitle size16 color_e34156">特别提示</div>
			<div class="sfrzTipdiv lh_30">
				1. 一个意向购房家庭只能注册一次。主申请人必须是购房人之一，<span class="color_e34156">请如实填写主申请人姓名、证件号码、手机号码等信息，注册完成后不可修改！</span><br>2.
				登记的意向购房人、摇号选房人、合同签订人必须保持一致。
			</div>
		</div>
		<div align="center">
			<table width="351" border="1" align="center" cellpadding="10"
				cellspacing="10">
				<tr>
					<td width="101">姓名：</td>
					<td width="186"><label for="textfield"></label> <input
						type="text" name="textfield" id="textfield" /></td>
				</tr>
				<tr>
					<td>证件类型：</td>
					<td><select name="证件类型" id="13">
							<option value="1">身份证</option>
							<option value="2">港澳通行证</option>
							<option value="3">军官证</option>
					</select></td>
				</tr>
				<tr>
					<td>证件号码：</td>
					<td><label for="textfield2"></label> <input type="text"
						name="textfield2" id="textfield2" placeholder="18位数字" /></td>
				</tr>
				<tr>
					<td>电话号码：</td>
					<td><label for="textfield3"></label> <input type="text"
						name="textfield3" id="textfield3" placeholder="11位数字" /></td>
				</tr>
				<tr>
					<td>购房类型:</td>
					<td><label for="2"></label> <select name="购房类型" id="2">
							<option value="1">刚需家庭</option>
							<option value="2">普通家庭</option>
					</select></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><label for="textfield4"></label> <input type="password"
						name="textfield4" id="textfield4" placeholder="8-15位" /></td>
				</tr>
			</table>
			<table width="351" border="1" align="center" cellpadding="10"
				cellspacing="10">
				<tr>
					<td width="144" align="center"><input type="submit"
						id="button" value="提交" onclick="window.location.href='login.jsp'"></td>
					<td width="131" align="center"><input type="reset" id="reset1"
						value="重置"></td>
				</tr>
			</table>
		</div>
	</div>
	<script type="text/javascript">
		sfrzload();
		$("#txtPassword").focus(function() {
			$(this).removeAttr("readonly");
		})
		var timer = setInterval(function() {
			var obj = parseInt($("#spanSmsCount").text())
			obj--;
			$("#spanSmsCount").text(obj);
			if (obj <= 0) {
				$("#btnGetCode").css("text-decoration", "underline");
				$("#btnGetCode").css("color", "#e43156");
				$("#btnGetCode").val("重新发送");
				$("#btnGetCode").removeAttr("disabled");
				clearInterval(timer);
			} else {
				$("#btnGetCode").css("text-decoration", "none");
				$("#btnGetCode").css("color", "#333333");
				$("#btnGetCode").attr("disabled", "disabled");
				$("#btnGetCode").val(obj + "秒后重发");
			}
		}, 1000)

		function checkput() {
			var f = true;
			var msg = "";
			var txtXm = $("#txtXm").val();
			var txtZjhm = $("#txtZjhm").val();
			if ($.trim(txtXm) != txtXm) {
				msg = "姓名前后不能含有空格！";
				f = false;
			} else if (txtXm.replace("  ", " ") != txtXm) {
				msg = "姓名字符间空格只能输入一个空格！";
				f = false;
			} else if ($.trim(txtZjhm) != txtZjhm) {
				msg = "证件号码前后不能含有空格！";
				f = false;
			} else if (txtZjhm != txtZjhm.toUpperCase()) {
				msg = "证件号码请输入大写！"
				f = false
			} else if (txtZjhm.replace("  ", " ") != txtZjhm) {
				msg = "证件号码字符间空格只能输入一个空格！";
				f = false;
			} else if ($("#txtVerfy").val().length != 4) {
				msg = "请输入正确的验证码";
				f = false;
			}
			if (f) {
				if ($("#rblZjlx_0")[0].checked) {
					msg = checkCode($("#txtZjhm").val());
					var reg = /^[A-Z]+$/;
					var str = txtZjhm.substr((txtZjhm.length - 1), 1);
					if (txtZjhm.length == 18 && (str == "X" || str == "x")) {
						if (reg.test(str)) {
							return true;
						} else {
							msg = "身份证最后一位请输入大写！"
							f = false;
						}
					} else if (txtZjhm.length == 15
							&& (str == "X" || str == "x")) {
						var str = txtZjhm.substr(14, 1);
						if (reg.test(str)) {
							return true;
						} else {
							msg = "身份证最后一位请输入大写！"
							f = false;
						}
					}
					f = msg == true ? true : false;
				}
			}
			if (!f) {
				layer.msg(msg);
			}
			return f;
		}

		var getInfoObj = function() {
			return $(this).parents(".checkinput").next().find(".info");
		}

		$("[datatype]").focusin(function() {
			if (this.timeout) {
				clearTimeout(this.timeout);
			}
			var infoObj = getInfoObj.call(this);
			if (infoObj.siblings(".Validform_right").length != 0) {
				return;
			}
			infoObj.show().siblings().hide();

		}).focusout(
				function() {
					var infoObj = getInfoObj.call(this);
					this.timeout = setTimeout(function() {
						infoObj.hide().siblings(
								".Validform_wrong,.Validform_loading").show();
						;
					}, 0);
				});

		$(".registerform").Validform({
			tiptype : 2
		});
	</script>
	<link href="./LoginAndShow/footer.css" rel="stylesheet">
	<div class="w2017">
		<div style="width: 100%; height: 10px;"></div>
		<div class="footer">
			<div class="section">
				<div class="copyright">
					<div class="mark1"></div>
					<div class="link2017">
						<p>
							<a href="http://www.miibeian.gov.cn/" target="_blank">陕ICP备05011550号</a>
							<img class="imgwangan" src="./LoginAndShow/emblem.png"> <a
								target="_blank"
								href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=61010402000147">陕公网安备
								61010402000147号</a>
						</p>
						<p>
							网站标识码：8686868686<em></em> <a class="website">网站地图</a>&nbsp;&nbsp;
							<a class="website"
								onclick="window.open(&#39;http://fgj.xa.gov.cn/zw/Detail.aspx?firsttypeid=9&amp;id=9563&#39;)">联系我们</a>
						</p>
						<p>
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