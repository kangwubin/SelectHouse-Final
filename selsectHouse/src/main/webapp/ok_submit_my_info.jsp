<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="entry.Purchaser"%>

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
			<span class="size18 color_e34156">欢迎访问XATU商品住房用户个人信息中心</span>
		    
			<div class="fR size16 vm mag_r20 mag_b10 return_Btn weight700"
				onclick="window.location.href='index.jsp'">返回首页</div>
			<div class="clear"></div>
		</div>
		<div class="grayLine"></div>
		<div class="bd bgFDF8EA prel pad_20 mag_t80 sfrzTip">
			<div class="size18 color_e34156" align="center">
				友情提示：您的信息已经提交成功,个人信息不可更改.......</div>
		</div>
		<div align="center">
		<div align="center">    
		<!-- 后台获取数据----------------------------------------------------------------------------------- -->
		
		
     <table width="1000" border="1" align="center" cellpadding="10" cellspacing="10">
    <tr>
      <td width="100"> 姓名：</td>
      <td width="200"><label for="textfield"></label>
        <input type="text" name="textfield" id="textfield" value="username" readonly="readonly"/></td>
         <td>证件类型：</td>
      <td> 
      <input type="text" name="card_type" id="textfield4" placeholder="证件类型" readonly="readonly"
       value="card_type"/>	
      </td>
    </tr>
    <tr>
      <td>证件号码：</td>
      <td><label for="textfield2"></label>
      <input  type="text" name="textfield2" id="textfield2" placeholder="18位数字" readonly="readonly"
      value="card_num"/></td>
       <td>电话号码：</td>
      <td><label for="textfield3"></label>
      <input type="text" name="textfield3" id="textfield3" placeholder="11位数字" readonly="readonly"
      value="tel_num" /></td>
    </tr>
   
    <tr>
      <td>购房类型：</td>
      <td>
      <input type="text" name="family_type" id="textfield4" placeholder="购房类型"  readonly="readonly"
      value="famgily_type"/>
      </td>
       <td>密码：</td>
      <td><label for="textfield4"></label>
      <input type="text" name="textfield4" id="textfield4" placeholder="8-15位"  readonly="readonly"
      value="password"/></td>
      </tr>
  </table>	
		<!-- ----------------------------------------------------------------------------------- -->
</div>
		</div>
	</div>
	<!--  
	<link href="./LoginAndShow/footer.css" rel="stylesheet">
<div class="w2017">
	<div style="width: 80%; height: 10px;"></div>
	<div class="footer" style="width:1000px; margin:auto;">
	<div class="footer">
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
-->
</body>
</html>