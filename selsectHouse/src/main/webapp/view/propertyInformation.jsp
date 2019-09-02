<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
	购房摇号系统后台
</title><link href="./css/main.css" rel="stylesheet">
    <script src="./js/jquery.min.js"></script>
    <script src="./js/layer.js"></script><link rel="stylesheet" href="./css/layer.css" id="layuicss-layer">
    <script src="./js/main.js"></script>
</head>
<body>
    <form method="post" action="http://zfyxdj.xa.gov.cn/zfrgdjpt/xmgs.aspx" onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;btnSubmit&#39;)" id="form1">
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


<script src="./WebResource.axd" type="text/javascript"></script>


<script src="./WebResource(1).axd" type="text/javascript"></script>
<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="4E920C22">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="zaeFN5M+Yn1/6QCyAUQIlx/HnT63/RP/Eg+13YQP4zcE1y6wmMXMqFxOwgVKcWKLF/I2lblijC4a/R7FfAM9hGNqkbECf1bzFpaqLbR9S90QnqIkhcjHw7LZXknhh365G52nIPcie34ayYUduCOGvg==">
</div>
        
        
<link href="./css/header.css" rel="stylesheet">
<div id="Wuc_header_header00" class="header header00 top00">
    <img src="./img/topimg00.jpg">
</div>


        
        <input type="hidden" name="hidDayDjsj" id="hidDayDjsj" value="8-18">
        <div class="bgwhite caq_tbtsdiv">
            
            <img src="./img/1234.png">   
               
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
                        <a href="./personal.jsp">
                        <span data-id="-1"  class="xmgsyabHover1">用户信息管理<font></font></span>
                        </a>
                        <a href="./registrationInformation.jsp">
                            <span data-id="-1"  class="xmgsyabHover">登记信息审核<font></font></span>
                        </a>
                        <a href="./propertyInformation.jsp">
                        <span data-id="2" class="xmgsyabHover" >房源信息管理<font></font></span>
                        </a>
                        <a href="./salesInformation.jsp">
                        <span data-id="4" class="xmgsyabHover" >销售信息管理<font></font></span>
                        </a>
                        <a href="./staffManage.jsp">
                        <span data-id="6" class="xmgsyabHover" >员工操作记录<font></font></span>
                        </a>
                        
                       
                        <a href="https://www.baidu.com">
                        <div class="myyxdjBtn1" >
                             登出账号
                         </div>
                         </a>
                         <a href="./个人中心.html">
                         <div class="myyxdjBtn" >
                             个人中心
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
                <div class="mag_b10 prel pad_10 pad_t25">
                    <input type="submit" name="btnSubmit" value="" id="btnSubmit" disabled="disabled" class="aspNetDisabled" style="display:none;">
                    <div class="prel xmmcSearchDiv">
                        <span class="mag_r10">项目名称</span>
                        <input class="xmmcSearch" type="text" value="" id="txtSearch" onkeypress="search(window.event?event.keyCode:event.which,&#39;xmgs.aspx&#39;)">
                        <div class="xmgs_searchBtn" onclick="search(13,&#39;xmgs.aspx&#39;)">搜索</div>
                        <div id="divDayDjsj" class="pab right_20 size14 top_8 color_999999">登记时间为：08:00-18:00</div>
                    </div>
                </div>
                <div class="grayLine"></div>
                <div class=" mag_b20 pad_20">
                    
                   
                                
                     
                   <!--  <div class="bgwhite caq_tbtsdiv1">  
                   <!--  在这里加东西 -->           
                     </div>  -->

                     <div class="xmgsItem">
                                        <div class="fR xmgsBox bs_b pad_20 prel">
                                             <div class="size21 prel mag_b10"><span class="isInlineblock  textOverflow vm" title=" 大华·公园世家3#地块" style="max-width:315px;"> 大华·公园世家3#地块 </span>
                                               
                                                   
                                                   </span> 
                                                   
                                                 <span class="vm mag_l10" onclick="layer.open({title: false,type: 2,area: [&#39;950px&#39;, &#39;650px&#39;],skin: &#39;layui-layer-rim&#39;,content: &#39;xmjd.aspx?yxbh=0000001015&#39;,scrollbar: false});">                                        
                                             </div>
                                            <table class=" w_100">
                                                <tbody><tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">开发企业名称：</span><span title="陕西佳鑫置业有限公司" class="vm isInlineblock max_w426 textOverflow">陕西佳鑫置业有限公司</span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">意向登记时间：</span><span class="vm max_w353 color_e34156">2019-07-13 08:00至 2019-07-15 18:00</span></td>
                                                </tr>
                                                <tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">预（现）售楼幢号：</span><span title="2，3(全部可售房源共252套)" class="vm isInlineblock wrap max_w426">2，3<span class="mag_l5">(全部可售房源共<font class="color_e34156">252</font>套)</span></span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">预（现）售证号：</span><span title="2019254" class="vm isInlineblock max_w353 wrap">2019254</span></td>
                                                </tr>
                                                 <tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">现场接受资料时间：</span><span class="vm max_w426">2019-07-13 09:00至 2019-07-16 18:00</span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">现场接受资料地点：</span><div class="vm isInlineblock wrap max_w426" style="word-break:break-all;word-wrap:break-word;">大华公园世家销售中心（西安市曲江新区航天大道1199号）</div></td>
                                                </tr>
                                            </tbody></table>
                                            
                                              
                                        </div>
                                        <div class="clear"></div>
                    </div>  
                    <div class="xmgsItem">
                                        <div class="fR xmgsBox bs_b pad_20 prel">
                                             <div class="size21 prel mag_b10"><span class="isInlineblock  textOverflow vm" title=" 大华·公园世家3#地块" style="max-width:315px;"> 大华·公园世家3#地块 </span>
                                               
                                                   
                                                   </span> 
                                                   
                                                 <span class="vm mag_l10" onclick="layer.open({title: false,type: 2,area: [&#39;950px&#39;, &#39;650px&#39;],skin: &#39;layui-layer-rim&#39;,content: &#39;xmjd.aspx?yxbh=0000001015&#39;,scrollbar: false});">                                        
                                             </div>
                                            <table class=" w_100">
                                                <tbody><tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">开发企业名称：</span><span title="陕西佳鑫置业有限公司" class="vm isInlineblock max_w426 textOverflow">陕西佳鑫置业有限公司</span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">意向登记时间：</span><span class="vm max_w353 color_e34156">2019-07-13 08:00至 2019-07-15 18:00</span></td>
                                                </tr>
                                                <tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">预（现）售楼幢号：</span><span title="2，3(全部可售房源共252套)" class="vm isInlineblock wrap max_w426">2，3<span class="mag_l5">(全部可售房源共<font class="color_e34156">252</font>套)</span></span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">预（现）售证号：</span><span title="2019254" class="vm isInlineblock max_w353 wrap">2019254</span></td>
                                                </tr>
                                                 <tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">现场接受资料时间：</span><span class="vm max_w426">2019-07-13 09:00至 2019-07-16 18:00</span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">现场接受资料地点：</span><div class="vm isInlineblock wrap max_w426" style="word-break:break-all;word-wrap:break-word;">大华公园世家销售中心（西安市曲江新区航天大道1199号）</div></td>
                                                </tr>
                                            </tbody></table>
                                            
                                              
                                        </div>
                                        <div class="clear"></div>
                    </div> 
                    <div class="xmgsItem">
                                        <div class="fR xmgsBox bs_b pad_20 prel">
                                             <div class="size21 prel mag_b10"><span class="isInlineblock  textOverflow vm" title=" 大华·公园世家3#地块" style="max-width:315px;"> 大华·公园世家3#地块 </span>
                                               
                                                   
                                                   </span> 
                                                   
                                                 <span class="vm mag_l10" onclick="layer.open({title: false,type: 2,area: [&#39;950px&#39;, &#39;650px&#39;],skin: &#39;layui-layer-rim&#39;,content: &#39;xmjd.aspx?yxbh=0000001015&#39;,scrollbar: false});">                                        
                                             </div>
                                            <table class=" w_100">
                                                <tbody><tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">开发企业名称：</span><span title="陕西佳鑫置业有限公司" class="vm isInlineblock max_w426 textOverflow">陕西佳鑫置业有限公司</span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">意向登记时间：</span><span class="vm max_w353 color_e34156">2019-07-13 08:00至 2019-07-15 18:00</span></td>
                                                </tr>
                                                <tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">预（现）售楼幢号：</span><span title="2，3(全部可售房源共252套)" class="vm isInlineblock wrap max_w426">2，3<span class="mag_l5">(全部可售房源共<font class="color_e34156">252</font>套)</span></span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">预（现）售证号：</span><span title="2019254" class="vm isInlineblock max_w353 wrap">2019254</span></td>
                                                </tr>
                                                 <tr height="30">
                                                    <td width="529" align="left"><span class="color_999999 vm">现场接受资料时间：</span><span class="vm max_w426">2019-07-13 09:00至 2019-07-16 18:00</span></td>
                                                    <td width="529" align="left"><span class="color_999999 vm">现场接受资料地点：</span><div class="vm isInlineblock wrap max_w426" style="word-break:break-all;word-wrap:break-word;">大华公园世家销售中心（西安市曲江新区航天大道1199号）</div></td>
                                                </tr>
                                            </tbody></table>
                                            
                                              
                                        </div>
                                        <div class="clear"></div>
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
        
<link href="./css/footer.css" rel="stylesheet">
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
       
        <script type="text/javascript" src="./js/h.js"></script>
    </span>
</div>
    

<script type="text/javascript">
//<![CDATA[
WebForm_AutoFocus('btnSubmit');//]]>
</script>
</form>


</body>
</html>