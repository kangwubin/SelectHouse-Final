<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0054)http://zfyxdj.xa.gov.cn/zfrgdjpt/sfrz.aspx?qy=00&aim=1 -->
<html xmlns="http://www.w3.org/1999/xhtml"><head id="Head1"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><meta http-equiv="X-UA-Compatible" content="IE=8"><title>
	系统员工登入界面
</title><link href="/selsectHouse/afterView/css/main.css" rel="stylesheet">
    <script src="/selsectHouse/afterView/js/jquery.min.js"></script>
    <script src="/selsectHouse/afterView/js/layer.js"></script><link rel="stylesheet" href="/selsectHouse/afterView/js/layer.css" id="layuicss-layer">
    <script src="/selsectHouse/afterView/js/main.js"></script>
    <script src="/selsectHouse/afterView/js/data.js"></script>
    <link href="/selsectHouse/afterView/css/style.css" rel="stylesheet">
    <script src="/selsectHouse/afterView/js/Validform_v5.3_min.js"></script>
    <style>
        .validBig {width: 300px;top: 0px;}
        .validDiv {position: absolute;top: 0px;}
    </style>
</head>
<body>
   
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="z2Q4QhVy8+0hrLZEzAWIAU00s5r0QgQZGgAPN5nZp58ik/nPC36fGL0YeqJif/yaUsdHD0aK+ZEMSSH+PtUCv8d5693vkU7av7JhlUJSoekE3C1KEl4Wk+p9WLfDa2mVGghl2LUQnxuzXJOayk5COQ==">
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="474AB47C">
	<input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="Y3DFUedRFNwq03NPJrAwz5RhBxuZjO7cJ1wWQjBzUiUaBpSY7kViO+0lBAcbgwxThaSdX8LSEcKDTtS5g8p96JH9o9Jn4AmyJgNebD9BnoStIdqkA29mYS3laj+NLANTpreYevMARTAIc50guD5WE59WaBni9+KzkUYQ3sE6XTullrPHnz1fpN1S8n6VdNUQ805tUCs4MYG48pQ7/A5TyQ2oy0tYsF2xK6ko3W8IPOtFd5AG3TyHqDARsPgzWBYtFExhUKOQ7/sIvZml0M7QHtCZtJiJi6yfPQ5dl18JlpJr9qOV2sikQnvqTP8vfyP0/+A9gIhD/CC+ON9dGm1TzREJzT0fhAeRoE+IB5DvbtccvnzUbgctEER/zq3PrmRve5/M4yv97jnJeNGV8F5bNgV2ldD23NfAn4hMUJRvhKsqu+wpzEOhDuDN3H7gr+WQP0KP557o9BJ8D1HgBtHtupm+L7PLw/+lw150XzPofjrA2ecVG+nJYaw710dUDMp2">
</div>
        
<link href="/selsectHouse/afterView/css/header.css" rel="stylesheet">
<div id="WUC_header_header00" class="header header00 top00">
    <img src="/selsectHouse/afterView/img/topimg005.jpg">
</div>


        <input type="hidden" name="hidQy" id="hidQy" value="00">
        <input type="hidden" name="hidAim" id="hidAim" value="1">
        <input type="hidden" name="hidYxbh" id="hidYxbh">
        <input type="hidden" name="hidMsg" id="hidMsg" value="">
        <input type="hidden" name="hidXmmc" id="hidXmmc">
        <div class="content bgwhite  sfyzDiv">
            <div class="prel tc pad_30 pad_b10">
                <a href="/selsectHouse/index2.jsp">
                <input value="返回首页" class="nextBtn2">
                </a>
                <div class="clear"></div>
            </div>
            <div class="grayLine"></div>
            
            <div class="yz pad_20">
		 <form action="/selsectHouse/LoginServlet?method=staffLogin" method="post">
		 
                <table>
                    <tbody><tr>
                        <td class="size16 tr" width="164">工号&nbsp;</td>
                        <td class="checkinput" colspan="2" width="300">
                            <input name="txtXm" type="text" id="txtXm" class="bs lh_30 ti" datatype="/^[\u2e80-\ufe4f\ufa2d\a-zA-Z_\.·\s+]{2,20}$/" placeholder="请输入员工工号" nullmsg="员工工号不能为空！" errormsg="请输入正确员工工号！" sucmsg=" " maxlength="50"></td>
                        <td class="prel">
                            <div class="validBig pab" style="top: 5px;left: 25px;">
                                <div class="validDiv">
                                    <span class="Validform_checktip" style="vertical-align: "></sapn>
                                    
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr height="20"></tr>

                    <tr>
                        <td class="size16 tr">
                            <table id="rblZjlx">
	                       </table>
                        </td>
                        
                    </tr>
                    <tr height="20"></tr>
                    <tr>
                        <td class="size16 tr">密码&nbsp;</td>
                        <td class="checkinput" colspan="2">
                            <input name="txtSjhm" type="password" id="txtSjhm" class="bs lh_30 ti" datatype="m" placeholder="请输入员工密码" nullmsg="员工密码不能为空！" errormsg="请输入正确的员工密码！" sucmsg=" " maxlength="11"></td>
                        <td class="prel">
                            <div class="validBig pab" style="top: 5px;left: 25px;">
                                <div class="validDiv">
                                    <span class="Validform_checktip"></span>
                                    
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr height="20"></tr>

                    

                    <tr height="20"></tr>

                    
                   
                </tbody>
                </table>
                <div class="tr mag_t40">
                    <input type="reset" name="btnNext" value="重置信息" onclick="return checkput();" id="btnNext" class="nextBtn1">
                </div>
                <div class="tr mag_t40">
                    <input type="submit" name="btnNext" value="马上登录"  id="btnNext" class="nextBtn">
                </div>
                
                <script type="text/javascript">
            var msg_user = $('.Validform_checktip')[0];
             var msg_pass = $('.Validform_checktip')[1];
            $("#txtXm").blur(function () {
                var val = $(this).val();
                if( !val ){
                    msg_user.innerHTML = '工号不能为空';
                }else{msg_user.innerHTML = '';}
            })  
            $("#txtSjhm").blur(function () {
                var val = $(this).val();
                if( !val ){
                    msg_pass.innerHTML = '密码不能为空';
                }else{msg_pass.innerHTML = '';}
            }) 

        </script>
                
                
                
                
            </form>    
            </div>
        </div>

        
        

        

   
    



</body></html>