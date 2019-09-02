<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <a href="/selsectHouse/PurchaserServlet?method=afterPurchaserQuery">
                        <span data-id="-1"  class="xmgsyabHover">用户信息管理<font></font></span>
                        </a>
                        <!-- <a href="/selsectHouse/afterView/dengjixinxishenhe.jsp">
                            <span data-id="-1"  class="xmgsyabHover">登记信息审核<font></font></span>
                        </a> -->
                        <a href="/selsectHouse/HouseServlet?method=aFterHouseQuery">
                        <span data-id="2" class="xmgsyabHover" >房源信息管理<font></font></span>
                        </a>
                        <a href="/selsectHouse/HouseServlet?method=shouSellTime1">
                        <span data-id="6" class="xmgsyabHover" >摇号时间发布<font></font></span>
                        </a>
                        <a href="/selsectHouse/HouseServlet?method=shouSellTime2">
                        <span data-id="6" class="xmgsyabHover" >售楼时间审核<font></font></span>
                        </a>
                        <a href="/selsectHouse/afterView/yuangongcaozuojilu.jsp">
                        <span data-id="6" class="xmgsyabHover1" >员工操作记录<font></font></span>
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
                    
                   
                                
                     
                    
                        <!-- <th>姓名</th>       
                        <th>工号</th>       
                        <th>电话号码</th>                        
                        <th>权限</th>
                        <th>操作类型</th>
                        <th>数据库</th>
                        <th>操作信息</th>
                        <th>操作时间</th>

                        <th>删除/修改</th> -->
                       <div class="bgwhite caq_tbtsdiv1"> 
                   <!--  在这里加东西 --> 
                   <!-- servlet实现 -->   
                   
                   
                   
                    <hr>
                    <br><br>
                    <table border="1" cellpadding="10" cellspacing="0"  width="1100">
      I             <tr>
                    <th>姓名</th>       
                    <th>工号</th>       
                   <th>电话号码</th>                        
                  <th>权限</th>
                    <th>操作类型</th>
                    <th>数据库</th>
                    <th>操作信息</th>
                    <th>操作时间</th>
                    <!-- <th>删除/修改</th> -->
                    </tr>
              
            <tr>
                <td>小红</td>
                <td>030600</td>
                <td>18629006340</td>
                <td>1</td>
                <td>删除</td>
                <td>用户数据库</td>
                <td>李四的信息审核</td>
                <td>2019.7.1:18:20</td>    
            </tr>
            <tr>
                <td>小绿</td>
                <td>030600</td>
                <td>18600000340</td>
                <td>1</td>
                <td>修改</td>
                <td>用户数据库</td>
                <td>王五的信息审核</td>
                <td>2019.7.1:18:20</td>    
            </tr>
            <tr>
                <td>小红</td>
                <td>030600</td>
                <td>18629006340</td>
                <td>1</td>
                <td>删除</td>
                <td>用户数据库</td>
                <td>李四的信息审核</td>
                <td>2019.7.1:18:20</td>    
            </tr>
            
            <tr>
                <td>小是</td>
                <td>030600</td>
                <td>18620006340</td>
                <td>2</td>
                <td>删除</td>
                <td>用户数据库</td>
                <td>王五的信息审核</td>
                <td>2019.7.1:18:20</td>    
            </tr>
            <tr>
                <td>小的</td>
                <td>030600</td>
                <td>18009006340</td>
                <td>1</td>
                <td>删除</td>
                <td>用户数据库</td>
                <td>李大萨达的信息审核</td>
                <td>2019.7.1:18:20</td>    
            </tr>
            <tr>
                <td>小红</td>
                <td>030600</td>
                <td>18629006340</td>
                <td>1</td>
                <td>删除</td>
                <td>用户数据库</td>
                <td>李四的信息审核</td>
                <td>2019.7.1:18:20</td>    
            </tr>
            <tr>
                <td>小的</td>
                <td>030600</td>
                <td>18009006340</td>
                <td>1</td>
                <td>删除</td>
                <td>用户数据库</td>
                <td>李大萨达的信息审核</td>
                <td>2019.7.1:18:20</td>    
            </tr>
        
      
        
        </table>    
           
                   
                   
                   
                   <!-- servlet实现 -->           
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