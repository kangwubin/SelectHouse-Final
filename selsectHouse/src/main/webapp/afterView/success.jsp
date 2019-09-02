<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="entry.HouseSource"%>
<%@page import="java.util.List" %>
<%@page import="entry.Staff"%>
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
    table#stuRecordTable{width:1100px;margin:40px auto;text-align: center;}
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
                var operatorCell2 = this.parentNode.parentNode.getElementsByTagName("td")[2];
                var operatorCell3 = this.parentNode.parentNode.getElementsByTagName("td")[3];
                var operatorCell4 = this.parentNode.parentNode.getElementsByTagName("td")[4];
                var operatorCell5 = this.parentNode.parentNode.getElementsByTagName("td")[5];
                var operatorCell6 = this.parentNode.parentNode.getElementsByTagName("td")[6];
                var operatorCell7 = this.parentNode.parentNode.getElementsByTagName("td")[7];
                 //取到要操作的td对象
                //1.修改按钮上有两个功能：修改，确定修改
                if(this.value == "修改"){
                    this.value = "提交";
                    operatorCell.innerHTML ="<input value='"+operatorCell.innerHTML+"'/>";
                    operatorCell1.innerHTML ="<input value='"+operatorCell1.innerHTML+"'/>";
                    operatorCell2.innerHTML ="<input value='"+operatorCell2.innerHTML+"'/>";
                    operatorCell3.innerHTML ="<input value='"+operatorCell3.innerHTML+"'/>";
                    operatorCell4.innerHTML ="<input value='"+operatorCell4.innerHTML+"'/>";
                    operatorCell5.innerHTML ="<input value='"+operatorCell5.innerHTML+"'/>";
                    operatorCell6.innerHTML ="<input value='"+operatorCell6.innerHTML+"'/>";
                    operatorCell7.innerHTML ="<input value='"+operatorCell7.innerHTML+"'/>";
                    //
                    
                    //做修改操作
                }else{
                    operatorCell.innerHTML =operatorCell.getElementsByTagName("input")[0].value;
                    operatorCell1.innerHTML =operatorCell1.getElementsByTagName("input")[0].value;
                    operatorCell2.innerHTML =operatorCell2.getElementsByTagName("input")[0].value;
                    operatorCell3.innerHTML =operatorCell3.getElementsByTagName("input")[0].value;
                    operatorCell4.innerHTML =operatorCell4.getElementsByTagName("input")[0].value;
                    operatorCell5.innerHTML =operatorCell5.getElementsByTagName("input")[0].value;
                    operatorCell6.innerHTML =operatorCell6.getElementsByTagName("input")[0].value;
                    operatorCell7.innerHTML =operatorCell7.getElementsByTagName("input")[0].value;

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
        c1.innerHTML = "姓名" 
        
        var c2 = insertR.insertCell(1);
        c2.innerHTML = "000000";
        
        var c3 = insertR.insertCell(2);
        c3.innerHTML = "00000000000" ;

        
        

        var c4 = insertR.insertCell(3);
        c4.innerHTML = "1";
        var c5 = insertR.insertCell(4);
        c5.innerHTML = "1";
        var c6 = insertR.insertCell(5);
        c6.innerHTML = "1";
        var c7 = insertR.insertCell(6);
        c7.innerHTML = "1";
        var c8 = insertR.insertCell(7);
        c8.innerHTML = "1";
        var c9 = insertR.insertCell(8);
        c9.innerHTML ='<input type="button" value="删除" class="del"/><input type="button" value="修改" class="update"/>';

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
                
                 <%
                   		HttpSession ss	= request.getSession();
                   		Staff staff = (Staff)ss.getAttribute("staff");
                   %>
                <div>
                    <div class="xmgs_tab">
                        <!-- <a href="/selsectHouse/PurchaserServlet?method=afterPurchaserQuery"> -->
                    <%
                    	if(staff.getPRIVILEGE()==2|staff.getPRIVILEGE()==3|staff.getPRIVILEGE()>=6)
                    	{
                    %>
                    <span data-id="-1" style="margin-right: 12px;" >
                    <select class="abc xmgsyabHover" style="padding:6px 10px;"onchange="func(value)">
                    <option value="1">销售公告发布</option>
                    <option value="2">摇号时间发布</option>
                    <option value="3">选房时间发布</option>
                	</select>
                	<%
                		}
                	%>
                	<font></font></span>
                       <!--  </a> -->
                        
                        <!-- <a href="/selsectHouse/HouseServlet?method=aFterHouseQuery"> -->
                     <%
                    	if(staff.getPRIVILEGE()==4|staff.getPRIVILEGE()==5|staff.getPRIVILEGE()>=6)
                    	{
                    %>
                    <span data-id="2" style="margin-right: 12px;" >
                    <select class="xmgsyabHover" style="padding:6px 10px;">
                    <option value="1">销售公告审核</option>
                    <option value="2">摇号时间审核</option>
                    <option value="3">选房时间审核</option>
         			</select><font></font></span>
         			<%
                		}
                	%>
                        <!-- </a> -->
                        
	                       
                        
                        
                        
                        
                        
                       
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
                    
                   <h1>提交成功</h1>
                                
                 
					          
                     </div>           
                                    
                                    
                                
                            
                            
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <script type="text/javascript"> xmgsload();</script>
        

    

<script type="text/javascript">
function func(value) {
	//获取被选中的option标签
	/* var vs = $(this).val(); */
	var a=console.log(value);
	//location.href="/selsectHouse/HouseServlet?method=publicSell"
		
	
	switch(value){
	case '1':location.href="/selsectHouse/HouseServlet?method=publicSell";break;
	case '2':location.href="/selsectHouse/HouseServlet?method=publicLotnumberTime";break;
	case '3':location.href="/selsectHouse/HouseServlet?method=publicSellectTime";break;
	}
	//var vs=$('.abc').val();

	// location.href="/selsectHouse/HouseServlet?method=aFterHouseQuery";
	
}

//<![CDATA[
WebForm_AutoFocus('btnSubmit');//]]>
</script>



</body>
</html>