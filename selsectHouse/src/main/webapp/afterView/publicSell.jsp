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
	
	
	<script src="../js/test.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="jquery-1.8.3.min.js"></script>
</head>
<body>
	<script type="text/javascript">
		function getRow(r) {
			var i = r.parentNode.parentNode.rowIndex;
			return i;
		}
		//----获取行号-----

		//----清除添加信息框的内容-----
		function cleanAddInput() {
			document.getElementById('ESTATE_ID').value = '';
			document.getElementById('ESTATE_NAME').value = '';
			document.getElementById('ENTERPRISE_NAME').value = '';
			document.getElementById('PHONE').value = '';
			document.getElementById('IDENTIFICATION_ID').value = '';
			document.getElementById('BUILDING_NO').value = '';
			document.getElementById('PURPOSE_REGISTER_START_TIME').value = '';
			document.getElementById('PURPOSE_REGISTER_END_TIME').value = '';
			document.getElementById('RECEIVE_METERIAL_START_TIME').value = '';
			document.getElementById('RECEIVE_METERIAL_END_TIME').value = '';
			document.getElementById('RECEIVE_METERIAL_ADDRESS').value = '';
			document.getElementById('LOTIERY_TIME').value = '';
			document.getElementById('SELECT_HOUSE_TIME').value = '';
			document.getElementById('PUBLISHU_CONTENT').value = '';
		}
		//----清除添加信息框的内容-----

		//----显示添加信息框-----
		function showAddInput() {
			document.getElementById('addinfo').style = "display:block-inline";
			document.getElementById('btn_add').style = "display:block-inline";
			document.getElementById('btn_update').style = "display:none";
			cleanAddInput();
		}
		//----显示添加信息框-----

		//----隐藏添加信息框-----
		function hideAddInput() {
			document.getElementById('addinfo').style = "display:none";

		}
		//----隐藏添加信息框-----

		//----判断输入框的信息是否符合要求-----
		function judge() {
			//根据id获取表单信息
			var ESTATE_NAME = document.getElementById('ESTATE_NAME').value;
			var ENTERPRISE_NAME = document.getElementById('ENTERPRISE_NAME').value;
			var PHONE = document.getElementById('PHONE').value;
			var IDENTIFICATION_ID = document
					.getElementById('IDENTIFICATION_ID').value;
			var BUILDING_NO = document.getElementById('BUILDING_NO').value;
			var PURPOSE_REGISTER_START_TIME = document
					.getElementById('PURPOSE_REGISTER_START_TIME').value;
			var PURPOSE_REGISTER_END_TIME = document
					.getElementById('PURPOSE_REGISTER_END_TIME').value;
			var RECEIVE_METERIAL_START_TIME = document
					.getElementById('RECEIVE_METERIAL_START_TIME').value;
			var RECEIVE_METERIAL_END_TIME = document
					.getElementById('RECEIVE_METERIAL_END_TIME').value;
			var RECEIVE_METERIAL_ADDRESS = document
					.getElementById('RECEIVE_METERIAL_ADDRESS').value;
			/* 			var LOTIERY_TIME = document.getElementById('LOTIERY_TIME').value;
			 var SELECT_HOUSE_TIME = document
			 .getElementById('SELECT_HOUSE_TIME').value; */
			var PUBLISHU_CONTENT = document.getElementById('PUBLISHU_CONTENT').value;
			var judge = true; //用于判断表单信息是否符合

			if (ESTATE_NAME == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (ENTERPRISE_NAME == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (PHONE == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (IDENTIFICATION_ID == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (BUILDING_NO == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (PURPOSE_REGISTER_START_TIME == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (PURPOSE_REGISTER_END_TIME == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (RECEIVE_METERIAL_START_TIME == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (RECEIVE_METERIAL_END_TIME == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (RECEIVE_METERIAL_ADDRESS == '') {
				judge = false;
				alert('信息必须全部填写');
			} else if (PUBLISHU_CONTENT == '') {
				judge = false;
				alert('信息必须全部填写');

			}

			return judge;
		}
		//----判断输入框的信息是否符合要求-----

		//----新增信息的插入方法-----
		function insertInfo() {
			//根据id获取表单信息
			var arr = new Array();
			arr[0] = document.getElementById('ESTATE_ID').value;
			arr[1] = document.getElementById('ESTATE_NAME').value;
			arr[2] = document.getElementById('ENTERPRISE_NAME').value;
			arr[3] = document.getElementById('PHONE').value;
			arr[4] = document.getElementById('IDENTIFICATION_ID').value;
			arr[5] = document.getElementById('BUILDING_NO').value;
			arr[6] = document.getElementById('PURPOSE_REGISTER_START_TIME').value;
			arr[7] = document.getElementById('PURPOSE_REGISTER_END_TIME').value;
			arr[8] = document.getElementById('RECEIVE_METERIAL_START_TIME').value;
			arr[9] = document.getElementById('RECEIVE_METERIAL_END_TIME').value;
			arr[10] = document.getElementById('RECEIVE_METERIAL_ADDRESS').value;
			arr[11] = document.getElementById('LOTIERY_TIME').value;
			arr[12] = document.getElementById('SELECT_HOUSE_TIME').value;
			arr[13] = document.getElementById('PUBLISHU_CONTENT').value;
			var x = document.getElementById('table').insertRow(1); //获取第一行对象

			for (var i = 0; i < arr.length; i++) {
				x.insertCell(i).innerHTML = arr[i]; //用循环把每个数据插入第一行的每一列
			}

		}
		//----新增信息的插入方法-----

		//----新增信息-----
		function addInfo() {

			if (judge() == true) {
				alert('提交成功');
				queryFun();
				insertInfo(); //执行插入
				hideAddInput(); //隐藏添加信息框

			} else {
				alert('提交失败');
			}
		}
		//----新增信息-----

		//----根据行号查信息----
		function queryInfoByRow(r) {

			var arr = new Array();
			for (var m = 0; m < 13; m++) {
				arr[m] = document.getElementById('table').rows[row].cells[m].innerText;
			}
			return arr; //返回该行数据

		}
		//----根据行号查信息----

		//----把查询到的信息放入修改的表单里----
		function insertInputFromQuery(arr) {
			document.getElementById('ESTATE_ID').value = arr[0];
			document.getElementById('ESTATE_NAME').value = arr[1];
			document.getElementById('ENTERPRISE_NAME').value = arr[2];
			document.getElementById('PHONE').value = arr[3];
			document.getElementById('IDENTIFICATION_ID').value = arr[4];
			document.getElementById('BUILDING_NO').value = arr[5];
			document.getElementById('PURPOSE_REGISTER_START_TIME').value = arr[6];
			document.getElementById('PURPOSE_REGISTER_END_TIME').value = arr[7];
			document.getElementById('RECEIVE_METERIAL_START_TIME').value = arr[8];
			document.getElementById('RECEIVE_METERIAL_END_TIME').value = arr[9];
			document.getElementById('RECEIVE_METERIAL_ADDRESS').value = arr[10];
			document.getElementById('LOTIERY_TIME').value = arr[11];
			document.getElementById('SELECT_HOUSE_TIME').value = arr[12];
			document.getElementById('PUBLISHU_CONTENT').value = arr[13];

		}
		//----把查询到的信息放入修改的表单里----
		function updateInfo() {
			if (judge() == true) {
				alert('提交成功');
				document.getElementById('table').deleteRow(row);//删除原来那行  
				insertInfo(); //插入修改后的值
				hideAddInput(); //隐藏添加模块

			} else {
				alert('提交失败');
				hideAddInput();
			}
		}

		//提交
		function queryFun() {
			document.getElementById("maybeForm").action = "/selsectHouse/SellInfoManage?operate=Salesannouncement";
			document.getElementById("maybeForm").submit();
		}
	</script>
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
					<th width="45">楼盘ID</th>
					<th width="50">楼盘<br>名称
					</th>
					<th width="70">开发企业</th>
					<th width="70">电话</th>    
					<th width="70">预（现）售证号</th>
					<th width="70">预（现）售楼栋号</th>
					<th width="70">意向登记开始时间</th>
					<th width="66">意向登记结束时间</th>
					<th width="66">现场接受资料开始时间</th>
					<th width="90">现场接受资料结束时间</th>
					<th width="110">现场接受资料地点</th>
					<th width="50">摇号<br>时间
					</th>
					<th width="50">选房<br>时间
					</th>
				</tr>
				<c:forEach items="${houseList}" var="houseInfo">
					<tr>
						<td height="71">${houseInfo.EATATE_ID}</td>
						<td>${houseInfo.EATATE_NAME}</td>
						<td>${houseInfo.ENTERPRISE_NAME}</td>
						<td>${houseInfo.PHONE}</td>
						<td>${houseInfo.IDENTIFICATION_ID}</td>
						<td>${houseInfo.BUILDING_NO}</td>
						<td>${houseInfo.PURPOSE_REGISTER_START_TIME}</td>
						<td>${houseInfo.PURPOSE_REGISTER_END_TIME}</td>
						<td>${houseInfo.RECEIVE_METERIAL_START_TIME}</td>
						<td>${houseInfo.RECEIVE_METERIAL_END_TIME}</td>
						<td>${houseInfo.RECEIVE_METERIAL_ADDRESS}</td>
						<td><c:if test="${houseInfo.LOTIERY_TIME == null}">
								待确定
							</c:if> <c:if test="${houseInfo.LOTIERY_TIME != null}">
								${houseInfo.LOTIERY_TIME}
							</c:if></td>
						<td><c:if test="${houseInfo.SELECT_HOUSE_TIME == null}">
								待确定
							</c:if> <c:if test="${houseInfo.SELECT_HOUSE_TIME != null}">
								${houseInfo.SELECT_HOUSE_TIME}
							</c:if></td>
							
					</tr>
					<tr>
					</tr>
				</c:forEach>
			</table>
			<div align="center">
			 <span ><a style="margin: 0 auto;width: 100%;text-align: center; display:inline-block" href="javascript:showAddInput();">
			 
			 添加数据</a></span>
			  </div>	
			
			
			
			<div style="display: none" id="addinfo">
			<form id="maybeForm" method="post">
				<input type="hidden" name="operate" value="Salesannouncement" />
				<table width="720" height="100" border="1" align="center"
					cellpadding="0" cellspacing="0">
					<tr style="height: 40px;">
						<td width="187">&nbsp;&nbsp;&nbsp;&nbsp;楼盘ID</td>    
						<td width="181"><input name="ESTATE_ID"
							placeholder="${houseAmount+1}" required="required" type="text"
							value="${houseAmount+1}" id="ESTATE_ID"
							style="width: 170px; font-size: 12px;"></td>
						<td width="186">&nbsp;&nbsp;&nbsp;&nbsp;楼盘名称</td>    
						<td width="156"><input name="ESTATE_NAME" type="text"
							id="ESTATE_NAME" style="width: 170px; font-size: 12px;"></td>
					</tr>
					 
					<tr style="height: 40px;">
						  
						<td>开发企业</td>    
						<td><input name="ENTERPRISE_NAME" type="text"
							id="ENTERPRISE_NAME" style="width: 170px; font-size: 12px;"></td>
						 
						<td>&nbsp;&nbsp;&nbsp;&nbsp;电话</td>    
						<td><input name="PHONE" type="text" id="PHONE"
							style="width: 170px; font-size: 12px;"></td>      
					</tr>

					<tr style="height: 40px;">
						<td>&nbsp;&nbsp;&nbsp;&nbsp;预（现）售证号</td>    
						<td><input name="IDENTIFICATION_ID" type="text"
							id="IDENTIFICATION_ID" style="width: 170px; font-size: 12px;"></td>
						    
						<td>&nbsp;&nbsp;&nbsp;&nbsp;预（现）售楼栋号</td>    
						<td><input name="BUILDING_NO" type="text" id="BUILDING_NO"
							style="width: 170px; font-size: 12px;"></td>  
					</tr>
					<tr style="height: 40px;">
						   
						<td>&nbsp;&nbsp;&nbsp;&nbsp;意向登记开始时间</td>    
						<td><input name="PURPOSE_REGISTER_START_TIME" type="date"
							id="PURPOSE_REGISTER_START_TIME"
							style="width: 170px; font-size: 12px;"></td>    
						<td>&nbsp;&nbsp;&nbsp;&nbsp;意向登记结束时间</td>    
						<td><input name="PURPOSE_REGISTER_END_TIME" type="date"
							id="PURPOSE_REGISTER_END_TIME"
							style="width: 170px; font-size: 12px;"></td>    
					</tr>

					<tr style="height: 40px;">
						   
						<td>&nbsp;&nbsp;&nbsp;&nbsp;现场开始接受资料时间</td>    
						<td><input name="RECEIVE_METERIAL_START_TIME" type="date"
							id="RECEIVE_METERIAL_START_TIME"
							style="width: 170px; font-size: 12px;"></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;现场结束接受资料时间</td>    
						<td><input name="RECEIVE_METERIAL_END_TIME" type="date"
							id="RECEIVE_METERIAL_END_TIME"
							style="width: 170px; font-size: 12px;"></td>  
					</tr>
					<tr style="height: 40px;">
						  
						<td style="width: 40px;">现场接受资料地点</td>    
						<td colspan="3"><input name="RECEIVE_METERIAL_ADDRESS" style="width: 750px; font-size: 25px;height:50px;" type="text"
							id="RECEIVE_METERIAL_ADDRESS" style="width:170px;font-size:25px;"></td>  
						
					</tr>
					<!-- 					<tr style="height: 40px;">
						   
						<td>&nbsp;&nbsp;&nbsp;&nbsp;摇号时间</td>    
						<td><input name="LOTIERY_TIME" type="text" id="LOTIERY_TIME"
							style="width: 170px; font-size: 12px;"></td>  
						<td>&nbsp;&nbsp;&nbsp;&nbsp;选房时间</td>    
						<td><input name="SELECT_HOUSE_TIME" type="text"
							id="SELECT_HOUSE_TIME" style="width: 170px; font-size: 12px;"></td>
						 
					</tr> -->
					   
					<tr style="height: 120px;">
						<td height="60">&nbsp;&nbsp;&nbsp;&nbsp;销售公告内容</td>
						<td colspan="3"><input name="PUBLISHU_CONTENT"
							style="width: 750px; font-size: 12px; height: 100px" type="text"
							id="PUBLISHU_CONTENT" style="width:170px; font-size:12px;"></td>
					</tr>

					<tr>
						<th colspan="4" style="height: 70px;"><input type="button"
							value="提交" onClick="updateInfo()" style="display: none"
							id="btn_update"> <input type="button" value="返回"
							onClick="hideAddInput()"> <input type="button" value="提交"
							onClick="addInfo()" id="btn_add"></th>
					</tr>
					</form>
					</div>
			
			
			
				
			
		</div>

	</body>
</html>