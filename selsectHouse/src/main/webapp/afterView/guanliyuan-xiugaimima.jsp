<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="entry.Staff"%>
<%@page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
	管理员密码修改
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
    <img src="/selsectHouse/afterView/img/topimg004.jpg">
</div>


        <input type="hidden" name="hidQy" id="hidQy" value="00">
        <input type="hidden" name="hidAim" id="hidAim" value="1">
        <input type="hidden" name="hidYxbh" id="hidYxbh">
        <input type="hidden" name="hidMsg" id="hidMsg" value="">
        <input type="hidden" name="hidXmmc" id="hidXmmc">
        <div class="content bgwhite  sfyzDiv">
            <div class="prel tc pad_30 pad_b10">
                <a href="/selsectHouse/HouseServlet?method=adminHouseQuery">
                <input value="返回首页" class="nextBtn2">
                </a>
                <div class="clear"></div>
            </div>
            <div class="grayLine"></div>
            
            <div class="yz pad_20">
				<form action="/selsectHouse/StaffServlet?method=adminUpdate" method="post">
                <table>
                    <tbody><tr>
                        <td class="size16 tr" width="164">管理员用户名&nbsp;</td>
                        <td class="checkinput" colspan="2" width="300">
                            <input name="adminname" type="text" id="txtXm" class="bs lh_30 ti" datatype="/^[\u2e80-\ufe4f\ufa2d\a-zA-Z_\.·\s+]{2,20}$/" placeholder="请输入管理员用户名" nullmsg="管理员用户名不能为空！" errormsg="请输入正确的管理员用户名！" sucmsg=" " maxlength="50"></td>
                        <td class="prel">
                            <div class="validBig pab">
                                <div class="validDiv">
                                    <div class="Validform_checktip"></div>
                                    
                                </div>
                            </div>
                        </td>
                    </tr>
                    

                    <tr>
                        <td class="size16 tr">
                            <table id="rblZjlx">
	</table>
                        
                    <tr height="20"></tr>
                    <tr>
                        <td class="size16 tr">输入旧密码&nbsp;</td>
                        <td class="checkinput" colspan="2">
                            <input name="adminoldpassword" type="password" id="txtSjhm" class="bs lh_30 ti" datatype="m" placeholder="请输入旧密码" nullmsg="旧密码不能为空！" errormsg="请输入正确的旧密码！" sucmsg=" "></td>
                        <td class="prel">
                            <div class="validBig pab">
                                <div class="validDiv">
                                    <div class="Validform_checktip"></div>
                                    
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr height="20"></tr>

                    <tr>
                        <td class="size16 tr">输入新密码&nbsp;</td>
                        <td class="checkinput" colspan="2">
                            <input name="adminnewpassword" type="password" id="txtSjhm" class="bs lh_30 ti" datatype="m" placeholder="请输入新密码" nullmsg="新密码不能为空！" errormsg="请输入正确的新密码！" sucmsg=" " ></td>
                        <td class="prel">
                            <div class="validBig pab">
                                <div class="validDiv">
                                    <div class="Validform_checktip"></div>
                                    
                                </div>
                            </div>
                        </td>
                    </tr>

                    <tr height="20"></tr>

                    <tr>
                        <td class="size16 tr">重复新密码&nbsp;</td>
                        <td class="checkinput" colspan="2">
                            <input name="adminnewpassword1" type="password" id="txtSjhm" class="bs lh_30 ti" datatype="m" placeholder="请再次输入新密码" nullmsg="新密码不能为空！" errormsg="请再次输入新密码！" sucmsg=" " ></td>
                        <td class="prel">
                            <div class="validBig pab">
                                <div class="validDiv">
                                    <div class="Validform_checktip"></div>
                                    
                                </div>
                            </div>
                        </td>
                    </tr>
                   
                </tbody></table>
                
                <div class="tr mag_t40">
                    <input type="reset" name="btnNext" value="重置信息" onclick="return checkput();" id="btnNext" class="nextBtn1">
                </div>
                <div class="tr mag_t40">
                    <input type="submit" name="btnNext" value="确认修改"  id="btnNext" class="nextBtn">
                </div>
            </div>
                </form>
        </div>

        
        <script type="text/javascript">sfrzload();
            $("#txtPassword").focus(function () {
                $(this).removeAttr("readonly");
            })
            var timer = setInterval(function () {
                var obj = parseInt($("#spanSmsCount").text())
                obj--;
                $("#spanSmsCount").text(obj);
                if (obj <= 0) {
                    $("#btnGetCode").css("text-decoration", "underline");
                    $("#btnGetCode").css("color", "#e43156");
                    $("#btnGetCode").val("重新发送");
                    $("#btnGetCode").removeAttr("disabled");
                    clearInterval(timer);
                }
                else {
                    $("#btnGetCode").css("text-decoration", "none");
                    $("#btnGetCode").css("color", "#333333");
                    $("#btnGetCode").attr("disabled", "disabled");
                    $("#btnGetCode").val(obj+"秒后重发");
                }
            }, 1000)


            function checkput() {
                var f = true;
                var msg = "";
                var txtXm = $("#txtXm").val();
                var txtZjhm = $("#txtZjhm").val();
                if ($.trim(txtXm) != txtXm) {
                    msg = "姓名前后不能含有空格！";
                    f = false; 
                }
                else if (txtXm.replace("  ", " ") != txtXm)
                {
                    msg = "姓名字符间空格只能输入一个空格！";
                    f = false; 
                }
                else if ($.trim(txtZjhm) != txtZjhm) {
                    msg = "证件号码前后不能含有空格！";
                    f = false;
                }
                else if (txtZjhm != txtZjhm.toUpperCase()) {
                        msg = "证件号码请输入大写！"
                        f = false
                }
                else if (txtZjhm.replace("  ", " ") != txtZjhm) {
                    msg = "证件号码字符间空格只能输入一个空格！";
                    f = false; 
                }
                else if ($("#txtVerfy").val().length != 4) {
                    msg = "请输入正确的验证码";
                    f = false;
                }
                if (f) {
                    if ($("#rblZjlx_0")[0].checked) {
                        msg = checkCode($("#txtZjhm").val());
                        var reg = /^[A-Z]+$/;
                        var str = txtZjhm.substr((txtZjhm.length-1), 1);
                        if (txtZjhm.length == 18 && (str == "X" || str == "x")) {
                            if (reg.test(str)) {
                                return true;
                            } else {
                                msg="身份证最后一位请输入大写！"
                                f=false;
                            }
                        } else if (txtZjhm.length == 15 && (str == "X" || str == "x")) {
                            var str = txtZjhm.substr(14, 1);
                            if (reg.test(str)) {
                                return true;
                            } else {
                                msg = "身份证最后一位请输入大写！"
                                f = false;
                            }
                        }
                        f = msg == true ? true : false;
                    }
                }
                if (!f) {
                    layer.msg(msg);
                }
                return f;
            }

            var getInfoObj = function () {
                return $(this).parents(".checkinput").next().find(".info");
            }

            $("[datatype]").focusin(function () {
                if (this.timeout) { clearTimeout(this.timeout); }
                var infoObj = getInfoObj.call(this);
                if (infoObj.siblings(".Validform_right").length != 0) {
                    return;
                }
                infoObj.show().siblings().hide();

            }).focusout(function () {
                var infoObj = getInfoObj.call(this);
                this.timeout = setTimeout(function () {
                    infoObj.hide().siblings(".Validform_wrong,.Validform_loading").show();;
                }, 0);
            });

            $(".registerform").Validform({
                tiptype: 2
            });



        </script>

        

   
    



</body>
</html>