<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="entry.HouseSource"%>
<%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
	购房摇号系统后台
</title><link href="/selsectHouse/afterView/css/main.css" rel="stylesheet">
    <script src="/selsectHouse/afterView/js/jquery.min.js"></script>
    <script src="/selsectHouse/afterView/js/layer.js"></script><link rel="stylesheet" href="/selsectHouse/afterView/css/layer.css" id="layuicss-layer">
    <script src="/selsectHouse/afterView/js/main.js"></script>
</head>
<body>
    
<div class="aspNetHidden">
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="rLaTylGP9uJooVBhpqXhG4aIfXP+rYtUsMT+avGGGI8GGBY/n5tM3eOESKviTjtCOWwu1nntBL8W4WuD7QvXLg7RWHApNEoeLgg+s6u3S0k=">
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['form1'];
if (!theForm) {
    theForm = document.form1;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/selsectHouse/afterView/WebResource.axd" type="text/javascript"></script>


<script src="/selsectHouse/afterView/WebResource(1).axd" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4E920C22">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="zaeFN5M+Yn1/6QCyAUQIlx/HnT63/RP/Eg+13YQP4zcE1y6wmMXMqFxOwgVKcWKLF/I2lblijC4a/R7FfAM9hGNqkbECf1bzFpaqLbR9S90QnqIkhcjHw7LZXknhh365G52nIPcie34ayYUduCOGvg==">
</div>
        
        
<link href="/selsectHouse/afterView/css/header.css" rel="stylesheet">
<div id="Wuc_header_header00" class="header header00 top00">
    <img src="/selsectHouse/afterView/img/topimg00.jpg">
</div>


        
        <input type="hidden" name="hidDayDjsj" id="hidDayDjsj" value="8-18">
        <div class="bgwhite caq_tbtsdiv">
            
            <img src="/selsectHouse/afterView/img/1234.png">   
               
            <div class="caq_tbts">
                
                <div class="caq_tbtsTxt">
                   根据我市人民政府办公厅《关于进一步加强管理保持房地产市场持续平稳健康发展的若干意见》(市政发[2017]23号)、《关于调整我市住房交易政策有关问题的通知》(市政办发[2017]59号)、《关于进一步稳定住房市场发展有关问题的通知》(市政发[2017]51号)、《关于进一步规范商品住房交易秩序有关问题的通知》（市政办发[2018]61号）的相关要求,因意向购房登记人多于可售房源,故采用公证摇号排序选房方式出售房源。
                </div>
            </div>
        </div>
        <div class="content">
            <div class="bgwhite  mag_tb">
                <div class="mag_b10 prel pad_10 pad_t25">
                    <div class="tc size22 pad_lr20">员工管理功能模块</div>
                    
                </div>
                <div>
                    <div class="xmgs_tab">
                        <a href="/selsectHouse/PurchaserServlet?method=adminPurchaserQuery">
                        <span data-id="-1"  class="xmgsyabHover">用户信息管理<font></font></span>
                        </a>
                       
                        <a href="/selsectHouse/HouseServlet?method=adminHouseQuery">
                        <span data-id="2" class="xmgsyabHover" >房源信息管理<font></font></span>
                        </a>
                        
                        <a href="/selsectHouse/HouseServlet?method=shouSellTime">
                        <span data-id="6" class="xmgsyabHover" >摇号时间发布<font></font></span>
                        </a>
                        <a href="/selsectHouse/HouseServlet?method=shouSellTime3">
                        <span data-id="6" class="xmgsyabHover1" >售楼时间审核<font></font></span>
                        </a>
                        <a href="/selsectHouse/afterView/guanliyuan-yuangongcaozuojilu.jsp">
                        <span data-id="6" class="xmgsyabHover" >员工操作记录<font></font></span>
                        </a>
                        <a href="/selsectHouse/StaffServlet?method=adminQuery">
                        <span data-id="6" class="xmgsyabHover" >员工编辑管理<font></font></span>
                        </a>
                        
                       
                        <a href="/selsectHouse/afterView/yuangongdengru.jsp">
                        <div class="myyxdjBtn1" >
                             登出账号
                         </div>
                         </a>
                         
                         
                    </div>
                    <script type="text/javascript">
                        $(".xmgs_tab .zzdj").each(function () {
                            if ($(this).find("font").text() == "(0)") {
                                $(this).hide();
                            }
                        })
                    </script>
                </div>
                
                <div class="grayLine"></div>
                <div class=" mag_b20 pad_20">
                    
                   
                                
                     
                    <div class="bgwhite caq_tbtsdiv1">  
                  <!--  在这里加东西 --> 
                   <!-- servlet实现 -->   
                   <%
					List<HouseSource> houseSource=(List<HouseSource>)request.getAttribute("HouseSource");
					if(houseSource!=null && houseSource.size()>0){
					%>  
                   
                    <%-- <%
                    List<Purchaser> purchasers=(List<Purchaser>)request.getAttribute("Purchasers");
                    if(purchasers!=null && purchasers.size()>0){
                    %> --%>
                    <hr>
                    <br><br>
                    <table border="1" cellpadding="10" cellspacing="0" width="1100">
                    <tr>
                    	<th>楼盘名称</th>  
            		<th>预（现）售楼幢号</th>
            		<th>摇号开始时间</th>
            		<th>摇号结束时间</th>
            		<th>选房开始时间</th>
            		<th>选房结束时间</th>
            		<th>审核状态</th>
					<th>提交</th>

                    </tr>
               <%
						for (HouseSource hou : houseSource) {
				%>
            	<tr>
                <td><%=hou.getEATATE_NAME() %></td>
                <td><%=hou.getBUILDING_NO() %>></td>
                <td> <input value="<%=hou.getLOTIERY_START_TIME() %>" name="starTime"> </td>
                <td> <input value="<%=hou.getLOTIERY_END_TIME() %>" name="starTime">  </td>
                <td> <input value="<%=hou.getLOTIERY_START_TIME() %>" name="starTime"> </td>
                <td> <input value="<%=hou.getLOTIERY_END_TIME() %>" name="starTime">  </td>
                <td> <select>
                    <option value="1">未审核</option>
                    <option value="2">通过审核</option>
                    <option value="3">未通过审核</option>
    
                </select> </td>
                <td><a href="/selsectHouse/StaffServlet?method=staffDelet&id">发布</a>
                </td>
                
            	</tr>
            	 <%
						}
				%>
				 <%
                    }
				%>

        </table>    
                   
                   
                   
                   
                   
                   
                   
                   
                              
</div>           
                      
                            
</div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <script type="text/javascript"> xmgsload();</script>
        
<link href="/selsectHouse/afterView/css/footer.css" rel="stylesheet">
<div class="w2017">
    <div style="width: 100%; height: 10px;"></div>
    <div class="footer">
        <div class="section">
            <div class="copyright">
                <div class="mark1">
                   
                    <script async="async" type="text/javascript">document.write(unescape("%3Cspan id='_ideConac' %3E%3C/span%3E%3Cscript src='http://dcs.conac.cn/js/27/386/0000/40917719/CA273860000409177190001.js' type='text/javascript'%3E%3C/script%3E"));</script><span id="_ideConac"><a href="http://bszs.conac.cn/sitename?method=show&amp;id=0B667B24CEA13BD6E053012819ACFB84" target="_blank">
                </div>
                <div class="link2017">
                    
                    <p>
                      
                    </p>
                </div>
                
            </div>
            <div class="mark3" style="left:815px;/*745px;*/">
                   
                    
            </div>
            <div class="mark3" onclick="window.open(&#39;http://www.shaanxi.gov.cn:8090/index.htlm&#39;);" style="display:none;">
               
            </div>
            <ul>
                
                  

            </ul>
            <div class="clr"></div>
        </div>
    </div>
    <span style="display: none;">
       
        <script type="text/javascript" src="/selsectHouse/afterView/js/h.js"></script>
    </span>
</div>
    

<script type="text/javascript">
//<![CDATA[
WebForm_AutoFocus('btnSubmit');//]]>
</script>



</body>
</html>