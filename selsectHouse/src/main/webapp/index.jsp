<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="entry.HouseSource"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<title>商品住房认购登记平台</title>
<div id="Wuc_header_header70" class="header header07 top07"
	align="center">
	<img src="./LoginAndShow/topimg07.jpg" align="center">
</div>
<link href="./LoginAndShow/main.css" rel="stylesheet">
</head>
<div class="bgwhite caq_tbtsdiv">
	<div class="caq_tbts">
		<div class="caq_tbtsTxt2">
			声明：《根据关于西咸新区涉及西安市行政区住房保障和住房管理职能移交公告》，从2018年11月1日起，西咸新区辖内涉及西安市行政区的住房保障和房屋管理行政和社会管理全部职能由西咸新区国土资源与房屋管理局承接办理。
		</div>
	</div>
</div>
<div class="content">
	<div class="bgwhite  mag_tb">
		<div class="mag_b10 prel pad_10 pad_t25">
			<div class="tc size22 pad_lr20">意向登记项目公示</div>
		</div>
		<div>
			<div class="xmgs_tab">
				<span data-id="-1" onclick="" class="zzdj"><a
					href="index2.jsp">公告</a></span> <span data-id="1" class="zzdj"><a
					href="/selsectHouse/PurchaserServlet?method=show_index">个人中心</a></span>
				<div class="myyxdjBtn" onclick="window.location.href='login.jsp'">登录</div>

			</div>
		</div>
		<div class="mag_b10 prel pad_10 pad_t25">
			<div class="prel xmmcSearchDiv">
				<input type="submit" name="btnSubmit" value="" id="btnSubmit"
					disabled="disabled" class="aspNetDisabled" style="display: none;">

				<form
					action="/selsectHouse/HouseServlet?method=HouseQueryByESTATE_NAME"
					method="post">
					<!-- 
					<span class="mag_r10">项目名称</span> <input name="subName"
						class="xmmcSearch" type="text" value="" id="txtSearch"
						onkeypress="">
						 -->
					<div class="xmgs_searchBtn" style="background: #ffffff;" onclick="">
						<!--  <input type="submit" value="搜索">  -->
					</div>


				</form>
				<div id="divDayDjsj" class="pab right_20 size14 top_8 color_999999">登记时间为：08:00-18:00</div>
			</div>
		</div>

		<div class="grayLine"></div>
		<div class=" mag_b20 pad_20">
			<div>
				<div class="xmgsList">
					<!-- 主体显示房源：房源名称、开发企业名称、预现售楼号、意向登记时间、现场资料接收时间、接受资料地点  -->
					<!-- ----------------------------------------------------------------------------------------- -->
					<%
						List<HouseSource> houseSource = (List<HouseSource>) request.getAttribute("HouseSource");
						if (houseSource != null && houseSource.size() > 0) {
					%>
					<%
						for (HouseSource hou : houseSource) {
					%>

					<input type="hidden" name="EATATE_ID"
						value="<%=hou.getEATATE_ID()%>" />
					<table class=" w_100">
						<tbody>
							<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm"
									style="font-size: 22px; color: red;">销售公告</span></td>
							</tr>
							<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm">楼盘名称：</span><span
									title="陕西佳鑫置业有限公司"
									class="vm isInlineblock max_w426 textOverflow"><%=hou.getEATATE_NAME()%></span></td>

								<td width="529" align="left"><span class="color_999999 vm">开发企业名称：</span><span
									title="陕西佳鑫置业有限公司"
									class="vm isInlineblock max_w426 textOverflow"><%=hou.getENTERPRISE_NAME()%></span></td>
								<td width="529" align="left"><span
									class="vm max_w353 color_e34156"> <img
										class="vm mag_r10" src="LoginAndShow/tj.png"> <a
										href="register.jsp"> <input type="submit" value="我要登记"
											style="font-size: 18px; background: #7BA9E0; color: #ffffff;">
									</a>
								</span></td>
							</tr>
							<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm">现场接受资料时间：</span>
									<span><%=hou.getRECEIVE_METERIAL_START_TIME()%>至<%=hou.getRECEIVE_METERIAL_END_TIME()%></span>
								</td>
								<td width="529" align="left"><span class="color_999999 vm">现场接受资料地点：</span>
									<div class="vm isInlineblock wrap max_w426 color_e34156"
										style="word-break: break-all; word-wrap: break-word;"><%=hou.getRECEIVE_METERIAL_ADDRESS()%></div></td>

							</tr>
							<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm">预（现）售楼幢号：</span><span
									title="2，3(全部可售房源共252套)" class="vm isInlineblock wrap max_w426"><%=hou.getBUILDING_NO()%><span
										class="mag_l5"></span></span></td>
								<td width="529" align="left"><span class="color_999999 vm">预（现）售证号：</span><span
									title="2019254" class="vm isInlineblock max_w353 wrap"><%=hou.getIDENTIFICATION_ID()%></span></td>

							</tr>
							<tr height="30">
								<td width="529" align="left"><span
									class="vm max_w353 color_e34156"><img class="vm mag_r10"
										src="./LoginAndShow/phone.png">电话：</span><span
									class="vm max_w353 color_e34156"><%=hou.getPHONE()%></span></td>
									<td width="529" align="left"><span class="color_999999 vm">意向登记时间：</span><span
									class="vm max_w426 color_e34156"><%=hou.getPURPOSE_REGISTER_START_TIME()%>至<%=hou.getPURPOSE_REGISTER_END_TIME()%></span></td>

							</tr>

							<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm">摇号时间：</span><span
									class="vm max_w426 color_e34156"><%=hou.getLOTIERY_TIME()%></span></td>
								<td width="529" align="left"><span class="color_999999 vm">选房时间：</span><span
									class="vm max_w426 color_e34156"><%=hou.getSELECT_HOUSE_TIME()%></span></td>
							</tr>
						</tbody>
					</table>
					<hr>
					<table>
				
					<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm"
									style="font-size: 22px; color: red;">摇号公示</span></td>
							</tr>
								<tr height="30">
								<td width="529" align="left"><span
									class="vm max_w353 color_e34156"></span><span
									class="vm max_w353 color_e34156"></span></td>
					</table>

					<hr>
					<table>
				
					<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm"
									style="font-size: 22px; color: red;">选房公示</span></td>
							</tr>
								<tr height="30">
								<td width="529" align="left"><span
									class="vm max_w353 color_e34156"></span><span
									class="vm max_w353 color_e34156"></span></td>
					</table>


					<%
						}
					%>

					<%
						}
					%>
					<!-- 显示房源信息到此结束 -->
					<!-- ----------------------------------------------------------------------------------------- -->
					<div class="clear"></div>
				</div>
				<div class="ygzs-page tc xwzx_pagediv"></div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	xmgsxaload();
</script>
<link href="./LoginAndShow/footer.css" rel="stylesheet">
<div class="w2017">
	<div style="width: 80%; height: 10px;"></div>
	<div class="footer" style="width: 1200px; margin: auto;">
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
					<p style="font-size: 18px;">
						<a href="/selsectHouse/afterView/yuangongdengru.jsp">温馨提示：员工与管理员请从此处登录</a>
					</p>
				</div>
			</div>
			<div class="clr"></div>
		</div>
	</div>
</div>
</html>