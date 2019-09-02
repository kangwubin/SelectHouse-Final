<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="entry.HouseSource"%>
<%@page import="entry.Staff"%>
<%@page import="java.util.List"%>
<%@page import="entry.Staff"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>XATU-04项目</title>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="/selsectHouse/afterView/css/index.css">
<link rel="stylesheet" href="/selsectHouse/afterView/css/index1.css">
<script type="text/javascript" src="/selsectHouse/afterView/js/main.js"></script>
<script type="text/javascript" src="/selsectHouse/afterView/js/index.js"></script>
</head>
<body>
	<%
		HttpSession sess = request.getSession();
		Staff staff = (Staff) sess.getAttribute("staff");
	%>

	<div class="wrapper">
		<!-- 头部 -->
		<header>
		<div class="content w-1000">

			<nav>
			<ul>
				<li><a href="#"></a></li>
				<li>员工管理 <i class="arrow-icon"></i>
					<div class="submenu vip-lesson">
						<!-- <a href="">
									<i class="kck-icon"></i>员工列表
									
								</a> -->

						<a href="SellInfoManage?operate=add"> <i class="zyljt-icon"></i>员工添加

						</a> <a href="SellInfoManage?operate=user"> <i class="zstxt-icon"></i>用户添加

						</a> <a href="SellInfoManage?operate=pwd"> <i
							class="xlkc-icon"></i>密码修改

						</a>

					</div>
				</li>
				<li>公告发布 <i class="arrow-icon"></i>
					<div class="submenu vip-lesson">
						<a href="SellInfoManage?operate=houseInfoList"> <i
							class="kck-icon"></i>销售公告发布

						</a> <a href="SellInfoManage?operate=issueRockTime"> <i
							class="zyljt-icon"></i>发布摇号时间

						</a> <a href="SellInfoManage?operate=issueSelectHouseTime"> <i
							class="zstxt-icon"></i>发布选房时间

						</a>

					</div>
				</li>
				<li>信息审核 <i class="arrow-icon"></i>
					<div class="submenu vip-lesson">
						<a href=""> <i class="jswd-icon"></i>销售公告发布审核

						</a> <a href=""> <i class="wiki-icon"></i>发布摇号时间审核

						</a> <a href=""> <i class="sq-icon"></i>发布选房时间审核
						</a> <a href=""> <i class="zygx-icon"></i>人员信息审核

						</a>
					</div>
				</li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>
				<li><a href="#"></a></li>

				<li><a href="#"></a></li>
				<li><a href="#"></a></li>

				<li><a href="#">欢迎：<%=staff.getEMPLOYEE_NAME()%></a></li>
				<li><a href="#">退出</a></li>
			</ul>
			</nav>
		</div>
		</header>
		<!-- end wrapper -->

		<div id="div_table_content">
			<form action="/selsectHouse/StaffServlet?method=adminUpdate"
				method="post">
				<table border="1" width="600px" style="margin: 0 auto;"
					cellpadding="0" cellspacing="0">

					<tbody>
						<tr>
							<td class="size16 tr" width="164">管理员用户名&nbsp;</td>
							<td class="checkinput" colspan="2" width="300"><input
								name="adminname" type="text" id="txtXm" class="bs lh_30 ti"
								datatype="/^[\u2e80-\ufe4f\ufa2d\a-zA-Z_\.·\s+]{2,20}$/"
								placeholder="请输入管理员用户名" nullmsg="管理员用户名不能为空！"
								errormsg="请输入正确的管理员用户名！" sucmsg=" " maxlength="50"></td>
							<td class="prel">
								<div class="validBig pab">
									<div class="validDiv">
										<div class="Validform_checktip"></div>

									</div>
								</div>
							</td>
						</tr>


						<tr>
							<td class="size16 tr">
								<table id="rblZjlx">
								</table>
						<tr height="20"></tr>
						<tr>
							<td class="size16 tr">输入旧密码&nbsp;</td>
							<td class="checkinput" colspan="2"><input
								name="adminoldpassword" type="password" id="txtSjhm"
								class="bs lh_30 ti" datatype="m" placeholder="请输入旧密码"
								nullmsg="旧密码不能为空！" errormsg="请输入正确的旧密码！" sucmsg=" "></td>
							<td class="prel">
								<div class="validBig pab">
									<div class="validDiv">
										<div class="Validform_checktip"></div>

									</div>
								</div>
							</td>
						</tr>
						<tr height="20"></tr>

						<tr>
							<td class="size16 tr">输入新密码&nbsp;</td>
							<td class="checkinput" colspan="2"><input
								name="adminnewpassword" type="password" id="txtSjhm"
								class="bs lh_30 ti" datatype="m" placeholder="请输入新密码"
								nullmsg="新密码不能为空！" errormsg="请输入正确的新密码！" sucmsg=" "></td>
							<td class="prel">
								<div class="validBig pab">
									<div class="validDiv">
										<div class="Validform_checktip"></div>

									</div>
								</div>
							</td>
						</tr>

						<tr height="20"></tr>

						<tr>
							<td class="size16 tr">重复新密码&nbsp;</td>
							<td class="checkinput" colspan="2"><input
								name="adminnewpassword1" type="password" id="txtSjhm"
								class="bs lh_30 ti" datatype="m" placeholder="请再次输入新密码"
								nullmsg="新密码不能为空！" errormsg="请再次输入新密码！" sucmsg=" "></td>
							<td class="prel">
								<div class="validBig pab">
									<div class="validDiv">
										<div class="Validform_checktip"></div>
									</div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="tr mag_t40" align="center">
					<input type="reset" name="btnNext" value="重置信息"
						onclick="return checkput();" id="btnNext" class="nextBtn1">
					<input type="submit" name="btnNext" value="确认修改" id="btnNext"
						class="nextBtn">
				</div>
			</form>
		</div>
</body>
</html>