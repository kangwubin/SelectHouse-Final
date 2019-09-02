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
	<form action="/selsectHouse/StaffServlet?method=staffAdd" method="post">            
			<table border="1" width="850px" style="margin:0 auto; text-align: center ;" cellpadding="0" cellspacing="0" >
      
        <tr>
            <th>姓名</th>
            
            <th>工号</th>
            
            <th>密码</th>
            
            <th>权限</th>
            <th>删除/修改</th>
        </tr>

        <tr>
        
            <td><input type="text" name="name"></td>
            
            <td><input type="text" name="id"></td>
            
            <td><input type="text" name="pwd"></td>
            
           <!--  <td><input type="text" name="privilege"></td> -->
           <td>
           <input type="checkbox" name="viwe" value="1" />浏览
            <input type="checkbox" name="viwe" value="2" />修改
             <input type="checkbox" name="viwe" value="4" />审核
           </td>
            <td><input type="button" value="删除" class="del"/>
            </td>
        
        </tr>

        <tr>
            <td colspan="8">
            <input type="submit" value="提交" "/></td>
        </tr>	
			</table>
    	</form>    
		</div>

	</body>
</html>