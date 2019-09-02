<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="entry.HouseSource"%>
<%@page import="entry.Staff"%>
<%@page import="java.util.List" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
							<!-- <a href="/selsectHouse/afterView/fangyuanxinxiguanli.jsp">
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
			
			<table border="1" id="table" style="text-align: center ;margin: 0 auto;">
					<tr>
			<!-- 在行中创建单元格，用来存放数据 -->
			<td align="center">楼盘ID</td>
			<td align="center">楼盘名称</td>
			<td align="center">选房时间</td>
			<td align="center">提交</td>
		</tr>
		<c:forEach items="${houseList}" var="houseInfo">
			<form action="SellInfoManage" method="post">
				<input type="hidden" name="operate" value="issueSelectHouseTime" />
				<input type="hidden" name="EATATE_ID" value="${houseInfo.EATATE_ID}" />
				<input type="hidden" name="EATATE_NAME" value="${houseInfo.EATATE_NAME}" />
			<tr style="color: #999999; font-weight: bold;">
				<td style="width: 52px;" id="EATATE_ID">${houseInfo.EATATE_ID}</td>
				<td style="width: 108px;" id="EATATE_NAME">${houseInfo.EATATE_NAME}</td>
				<td style="width: 140px;"><input name="SELECT_HOUSE_TIME"
					type="date" step="01" />
					${houseInfo.SELECT_HOUSE_TIME}</td>
				<td  style="width: 100px; align="center"><input type="submit" value="提交"></td>
			</tr>
			</form>
		</c:forEach>
			

			</table>	
				
			
		</div>

	</body>
</html>