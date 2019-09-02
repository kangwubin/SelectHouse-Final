<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="entry.Staff"%>
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
<style type="text/css">
    *{
    padding:0px;
    margn:0px;
    }
    table#stuRecordTable{width:900px;margin:40px auto;text-align: center;}
    table#stuRecordTable tr{height:30px;}
</style>
<script type="text/javascript">
    function $(eleStr){
        switch(eleStr.substr(0,1)){
        case "#":
            return document.getElementById(eleStr.substr(1));
            break;
        case ".":
            return document.getElementsByClassName(eleStr.substr(1));
            break;
        case "_":
            return document.getElementsByName(eleStr.substr(1));
            break;
        default:
            return document.getElementsByTagName(eleStr);
        break;
        }
    }

    onload = function(){

        doOperator();       
    }

    function doOperator(){

        var updates =$(".update");
        // var updates01 =$(".update01");
        // var updates02 =$(".update02");
        var dels =$(".del");
        for (var i = 0; i < dels.length; i++) {
            dels[i].onclick =   function(){
                if(confirm("是否确定删除？")){  //提示是否删除
                    //var row = this.parentNode.parentNode; //取到tr对象
                    //row.parentNode.removeChild(row);  //移除tr
                    $("#stuRecordTable").deleteRow(this.parentNode.parentNode.rowIndex);
                }
            }
            updates[i].onclick = function(){
                var operatorCell = this.parentNode.parentNode.getElementsByTagName("td")[0]; 
                var operatorCell1 = this.parentNode.parentNode.getElementsByTagName("td")[1];
                var operatorCell2 = this.parentNode.parentNode.getElementsByTagName("td")[2]; //取到要操作的td对象
                //1.修改按钮上有两个功能：修改，确定修改
                if(this.value == "修改"){
                    this.value = "确定";
                    operatorCell.innerHTML ="<input value='"+operatorCell.innerHTML+"'/>";
                    operatorCell1.innerHTML ="<input value='"+operatorCell1.innerHTML+"'/>";
                    operatorCell2.innerHTML ="<input value='"+operatorCell2.innerHTML+"'/>";//
                    
                    //做修改操作
                }else{
                    operatorCell.innerHTML =operatorCell.getElementsByTagName("input")[0].value;
                    operatorCell1.innerHTML =operatorCell1.getElementsByTagName("input")[0].value;
                    operatorCell2.innerHTML =operatorCell2.getElementsByTagName("input")[0].value;
                    this.value = "修改";
                    //做确定修改
                }
            }
           
            
        }
    }
    function addRow(){
        var rs = $("#stuRecordTable").rows;  //table取到所有的行
        var insertR = $("#stuRecordTable").insertRow(rs.length-1); //给表格添加一行(不包单元格)
        //insertR.innerHTML = rs[1].innerHTML;    
        var c1 = insertR.insertCell(0);       
        c1.innerHTML = "<input value='' / >" 
        
        var c2 = insertR.insertCell(1);
        c2.innerHTML = "<input value=''  />";
        
        var c3 = insertR.insertCell(2);
        c3.innerHTML = "<input value='' />" ;

        
        // c3.innerHTML ='<input type="button" value="修改" class="update"/>';

        var c4 = insertR.insertCell(3);
        c4.innerHTML = "<input value='' />";
        var c5 = insertR.insertCell(4);
        c5.innerHTML ='<input type="button" value="删除" class="del"/><input type="submit" value="提交" class="update"/>';

        doOperator();

        var cs = rs[1].cells; //取到当前行的所有单元格
        //alert(cs[1].innerHTML);
    }
</script>
    
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
                    <div class="tc size22 pad_lr20">管理员操作功能模块</div>
                    
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
                        <span data-id="6" class="xmgsyabHover" >售楼时间审核<font></font></span>
                        </a>
                        <a href="/selsectHouse/afterView/guanliyuan-yuangongcaozuojilu.jsp">
                        <span data-id="6" class="xmgsyabHover" >员工操作记录<font></font></span>
                        </a>
						<a href="/selsectHouse/StaffServlet?method=adminQuery">
                        <span data-id="6" class="xmgsyabHover1" >员工编辑管理<font></font></span>
                        </a>
                        
                        
                        
                        
                       
                        <a href="/selsectHouse/afterView/yuangongdengru.jsp">
                        <div class="myyxdjBtn1" >
                             登出账号
                         </div>
                         </a>
                         <a href="/selsectHouse/afterView/guanliyuan-xiugaimima.jsp">
                        <div class="myyxdjBtn" >
                             修改密码
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
                 
      <%
		List<Staff> staffs=(List<Staff>)request.getAttribute("staff");
		if(staffs!=null && staffs.size()>0){
		%>  
     <table id="stuRecordTable" border="1" cellpadding="0" cellspacing="0" >
        <tr>
            <th>姓名</th>
            
            <th>工号</th>
            
            <th>密码</th>
            
            <th>权限</th>
            <th>删除/修改</th>
        </tr>
        
        <%
						for (Staff sta : staffs) {
		%>
		
        <tr>
            <td><%=sta.getEMPLOYEE_NAME() %></td>
            
            <td><%=sta.getEMPLOYEE_ID() %></td>
            
            <td>********</td>
            
            <td>
			<%
				String prv = "";
				int a = sta.getPRIVILEGE();
				switch(a){
				case 0:prv = "未赋予权限";break;
				case 1:prv = "查看";break;
				case 2:prv = "修改";break;
				case 4:prv = "审核";break;
				case 3:prv = "查看、修改";break;
				case 5:prv = "查看、审核";break;
				case 6:prv = "添加、审核";break;
				case 7:prv = "admin";break;
				}
			%>
			<%=prv %>
			</td>
            <td><input type="button" value="删除" class="del"/><input type="button" value="修改" class="update"/>
            </td>
        
        </tr>
        <%
						}
		%>
       
        <tr>
            <td colspan="8">
            <a href="/selsectHouse/afterView/guanliyuan-guanliyuancaozuo_add.jsp">添加</a>
           
        </tr>
        <%
						}
		%>
    </table> 
    
                     </div>           
                                    
                                    
                                
                            <div class="ygzs-page tc xwzx_pagediv">
                                <div id="rptPager" class="xwzx_pager">
<span class="cpb" style="margin-right:5px;">1</span><a href="http://zfyxdj.xa.gov.cn/zfrgdjpt/xmgs.aspx?page=2" style="margin-right:5px;">2</a><a href="http://zfyxdj.xa.gov.cn/zfrgdjpt/xmgs.aspx?page=3" style="margin-right:5px;">3</a><a href="http://zfyxdj.xa.gov.cn/zfrgdjpt/xmgs.aspx?page=4" style="margin-right:5px;">4</a><a href="http://zfyxdj.xa.gov.cn/zfrgdjpt/xmgs.aspx?page=5" style="margin-right:5px;">5</a><a class="morelink" href="http://zfyxdj.xa.gov.cn/zfrgdjpt/xmgs.aspx?page=6" style="margin-right:5px;">...</a><a class="prenext" href="http://zfyxdj.xa.gov.cn/zfrgdjpt/xmgs.aspx?page=2" style="margin-right:5px;">&gt;</a>
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