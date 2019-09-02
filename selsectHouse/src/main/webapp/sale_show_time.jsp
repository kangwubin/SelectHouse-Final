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
			<div class="tc size22 pad_lr20">售楼时间显示</div>
		</div>
		<div>
			<div class="xmgs_tab">
				<span data-id="-1" class="zzdj"><a href="index2.jsp">房源信息</a></span>
				<div class="myyxdjBtn" ><a href="index2.jsp">返回首页</a></div>

			</div>
		</div>
		<div class="grayLine"></div>
		<div class=" mag_b20 pad_20">
			<div>
				<div class="xmgsList">
					<!-- 此处添加售楼时间公示：包括楼盘名称、开发企业名称、摇号时间、选房时间  -->
					<!-- ----------------------------------------------------------------------------------------- -->
					<%
						List<HouseSource> houseSource = (List<HouseSource>) request.getAttribute("HouseSource");
						if (houseSource != null && houseSource.size() > 0) {
					%>
					<%
						for (HouseSource hou : houseSource) {
					%>



					<table class=" w_100">
						<tbody>
							<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm">楼盘名称：</span><span
									title="陕西佳鑫置业有限公司"
									class="vm isInlineblock max_w426 textOverflow"><%=hou.getEATATE_NAME()%></span></td>
								<td width="529" align="left"><span class="color_999999 vm">开发企业名称：</span><span
									title="陕西佳鑫置业有限公司"
									class="vm isInlineblock max_w426 textOverflow"><%=hou.getENTERPRISE_NAME()%></span></td>
							</tr>
							<tr height="30">
								<td width="529" align="left"><span class="color_999999 vm">摇号时间：</span><span
									class="vm max_w426 color_e34156"><%=hou.getLOTIERY_START_TIME()%>至<%=hou.getLOTIERY_END_TIME()%></span></td>
								<td width="529" align="left"><span class="color_999999 vm">选房时间：</span>
									<div class="vm isInlineblock wrap max_w426 color_e34156"
										style="word-break: break-all; word-wrap: break-word;">
										<%=hou.getSELECT_HOUSE_START_TIME()%>至<%=hou.getSELECT_HOUSE_END_TIME()%></div></td>
							</tr>

						</tbody>
					</table>


					<hr>

					<%
						}
					%>
					<%
						}
					%>
					<!-- 显示摇号信息到此结束 -->
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
				</div>
			</div>
			<div class="clr"></div>
		</div>
	</div>
</div>
</html>