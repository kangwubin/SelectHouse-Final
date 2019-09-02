<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="entry.HouseSource"%>
<%@page import="entry.Staff"%>
<%@page import="java.util.List" %>
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
			HttpSession sess	= request.getSession();
			Staff staff = (Staff)sess.getAttribute("staff");
			
	%>
	
	<div class="wrapper">
		<!-- 头部 -->
		<header>
			<div class="content w-1000">
			
				<nav>
					<ul>
						<li>
							<a href="#"></a>
						</li>
						<li>
							员工管理
							<i class="arrow-icon"></i>
							<div class="submenu vip-lesson">
							<!-- <a href="">
									<i class="kck-icon"></i>员工列表
									
								</a> -->
								
								<a href="SellInfoManage?operate=add">
									<i class="zyljt-icon"></i>员工添加
									
								</a>
								<a href="SellInfoManage?operate=user">
									<i class="zstxt-icon"></i>用户添加
									
								</a>
								<a href="SellInfoManage?operate=pwd">
									<i class="xlkc-icon"></i>密码修改
									
								</a>
								
							</div>
						</li>
						<li>
							公告发布
							<i class="arrow-icon"></i>
							<div class="submenu vip-lesson">
								<a href="SellInfoManage?operate=houseInfoList">
									<i class="kck-icon"></i>销售公告发布
									
								</a>
								<a href="SellInfoManage?operate=issueRockTime">
									<i class="zyljt-icon"></i>发布摇号时间
									
								</a>
								<a href="SellInfoManage?operate=issueSelectHouseTime">
									<i class="zstxt-icon"></i>发布选房时间
									
								</a>
								
							</div>
						</li>
						<li>
							信息审核
							<i class="arrow-icon"></i>
							<div class="submenu vip-lesson">
								<a href="">
									<i class="jswd-icon"></i>销售公告发布审核
									
								</a>
								<a href="">
									<i class="wiki-icon"></i>发布摇号时间审核
									
								</a>
								<a href="">
									<i class="sq-icon"></i>发布选房时间审核								
								</a>
								<a href="">
									<i class="zygx-icon"></i>人员信息审核
									
								</a>
							</div>
						</li>
						<li>
							<a href="#"></a>
						</li>
						<li>
							<a href="#"></a>
						</li>
						<li>
							<a href="#"></a>
						</li>
						
						<li>
							<a href="#"></a>
						</li>
						<li>
							<a href="#"></a>
						</li>
						
						<li>
							<a href="#">欢迎：<%=staff.getEMPLOYEE_NAME() %></a>
						</li>
						<li>
							<a href="#">退出</a>
						</li>
					</ul>
				</nav>
			</div>
		</header>
		<!-- end wrapper -->

		<div id="div_table_content">
			<form action="/selsectHouse/PurchaserServlet?method=purChaseraddInfo1" method="post" onsubmit="return checkForm()">
		<div align="center">
			<div style="width: 500px; margin: 0 auto;">
				<label for="username" style="font-size: 18px">用户名&nbsp：</label>
				<div
					style="height: 35px; width: 400px; position: relative; display: inline">
					<input name="username" type="text" id="username"
						style="height: 30px; width: 350px; padding-right: 50px;">
					<span
						style="position: absolute; right: 18px; top: 2px; background-image: url(user.ico); height: 16px; width: 16px; display: inline-block;"></span>
				</div>
				
				<br /> <br /> <label for="password" style="font-size: 18px">电话号&nbsp;：</label>
				<div
					style="height: 35px; width: 500px; position: relative; display: inline">
					<input name="tel_number" type="text" id="tel_number"
						style="height: 30px; width: 350px; padding-right: 50px;">
					<span
						style="position: absolute; right: 16px; top: 2px; background-image: url(p.ico); height: 16px; width: 16px; display: inline-block;"></span>
				</div>

				<br /> <br /> <label for="type_card" style="font-size:18px">证件类型：</label>
				<input type="radio" id="type_card" name="type" value="身份证"/><label
					for="id_card" style="font-size: 18px" >身份证</label> <input
					type="radio" id="other_card" name="type" value="其他证件" /><label for="other_card"
					style="font-size: 18px">其他证件</label> 
					<div
					style="height: 35px; width: 500px; position: relative; display: inline">
					<span
						style="position: absolute; right: 16px; top: 2px; background-image: url(p.ico); height: 16px; width: 16px; display: inline-block;"></span>
				    </div>
					<br /> <br /> <label for="type_card" style="font-size:18px">购置类型：</label>
				  <input type="radio" id="type_card" name="type1" value="刚需家庭"/><label
					for="id_card" style="font-size: 18px" >刚需家庭</label> <input
					type="radio" id="other_card" name="type1" value="普通家庭" /><label for="other_card"
					style="font-size: 18px">普通家庭</label> 
					
					
					<br /> <br /> <label
					for="password" style="font-size: 18px">证件号：</label>
				<div
					style="height: 35px; width: 500px; position: relative; display: inline">
					<input name="card_number" type="text" id="card_number"
						style="height: 30px; width: 350px; padding-right: 50px;">
					<span
						style="position: absolute; right: 16px; top: 2px; background-image: url(p.ico); height: 16px; width: 16px; display: inline-block;"></span>
				</div>

				<br /> <br />
				<div style="width: 426px; float: right;">
					<input type="reset" value="重置"
						style="height: 30px; width: 400px; background-color: red;" />
				</div>
				<br /> <br />
				<div style="width: 426px; float: right;">
					<input type="submit" value="注册"
						style="height: 30px; width: 400px; background-color: red;" />
				</div>
			</div>
		</div>
		</form>
		</div>

	</body>
</html>