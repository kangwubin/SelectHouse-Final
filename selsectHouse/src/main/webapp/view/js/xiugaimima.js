//旧密码
function oldpassword(){
	o=document.getElementById("oldpsw").value;
if(o!='123456789'){
  document.getElementById("old").innerHTML="原密码不正确或格式错误"	
  document.getElementById("old").style.color="red";
}else{
  document.getElementById("old").innerHTML="√"	
document.getElementById("old").style.color="green"; 
document.getElementById("old").style.marginLeft="120px";
}
}
//新密码
function newpassword(){
	p=document.getElementById("paswd").value;


if(p.length>=8&&p.length<=15)
{
document.getElementById("pw").innerHTML="√"	
document.getElementById("pw").style.color="green";
document.getElementById("pw").style.marginLeft="120px";
}else{
document.getElementById("pw").innerHTML="请输入正确的密码格式"	
document.getElementById("pw").style.color="red";	
}
}

//确认密码
function validate(){
var qpw=document.getElementById("paswd").value;	
var qpw2=document.getElementById("paswd2").value;

if(qpw==qpw2 && p.length>=8&&p.length<=15){
document.getElementById("qpwtx").innerHTML="√"	
document.getElementById("qpwtx").style.color="green";
document.getElementById("qpwtx").style.marginLeft="120px";
document.getElementById("button").disabled = false;
}
else { 
document.getElementById("qpwtx").innerHTML="<font color='red'>两次密码不相同或者格式错误</font>";
document.getElementById("button").disabled = true;
}
}
//修改button
function checkput(){
	window.alert("您的密码已修改,请重新登录");
	location.href="login.html";
}
