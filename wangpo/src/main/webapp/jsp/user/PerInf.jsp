<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">
	/* $.extend($.fn.validatebox.defaults.rules, { */ 
   	 	/*必须和某个字段相等*/  
    	/*equalTo: { validator: function (value, param) 
    		{ return $(param[0]).val() == value; }, message: '字段不匹配' }  
    		
	});  */
	
	//判断修改的密码前后是否一致
	$(function(){
		$("#acc_pwd").blur(function(){
			var pw=$("#password").val();
			var rpw=$("#acc_pwd").val();
			if(pw==""){
				alert("请输入修改密码");
				return;
			}
			if(rpw==""){
				alert("请输入确认密码");
				return;
			}
			if(rpw != pw){
				alert("两次密码不一致,请重新输入");
				return;
			}
		})
	})
	
	
	$(function(){
		//正则判断输入的手机号是否符合要求
		$("#acc_tel").blur(function(){
			var pp= /^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\d{8}$/;
			if(pp.test($("#acc_tel").val())==false){
				alert("请输入正确的电话号码");
				return;
			}else{
				return;
			}
		})
		//判断身份证号是否符合规定
		$("#acc_idno").blur(function(){
			var idno=/^\d{18}$/;
			if(idno.test($("#acc_idno").val())==false){
				alert("请输入18位的身份证号");
				return;
			}
		})
		//判断qq是否符合，qq号为5-12位的数字
		$("#acc_qq").blur(function(){
			var qq=/^\d{5-12}$/;
			if(qq.test($("#acc_qq").val())==false){
				alert("请输入正确的qq号");
				return;
			}
		})
		//判断输入的年龄是否符合
		$("#acc_age").blur(function(){
			var age=/^([0-9]|[0-9]{2}|100)$/;
			if(qq.test($("#acc_age").val())==false){
				alert("请输入正确的年龄");
				return;
			}
		})
		//判断输入邮箱时候合符规定
		$("#acc_mail").blur(function(){
			var mail=/^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
			if(mail.test($("acc_mail").val())==false){
				alert("请输入正确的邮箱");
				return;
			}
		})
		
		$('#dd').dialog({
		    title: '修改密码',
		    width: 400,
		    height: 200,
		    closed: true,
		    cache: false,
		    href: 'get_content.php',
		    modal: true
		});
		$('#dd').dialog('refresh', 'new_content.php');
	})
	
	
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="ee">
		<form id="ff"  action="${proPath}/account/perinfgg.do" method="post" >
		<input type="hidden"  name="acc_id" value="${sessionScope.user.acc_id}"><br>
		<label>真实姓名：</label><input class="easyui-validatebox" type="text" name="acc_rname" data-options="required:true" value="${sessionScope.user.acc_rname}"/ ><br>
		<%-- <label>修改密码：</label><input value="${sessionScope.user.acc_pwd}" id="password" name="password" validType="length[6,16]" 
					class="easyui-validatebox"  type="password"  /> <br> 
		<label>确认密码：</label><input type="password" name="acc_pwd" id="acc_pwd" 
					class="easyui-validatebox"  validType="equalTo['#password']" invalidMessage="两次输入密码不匹配"/><br>--%>
		<label>用&nbsp&nbsp户&nbsp 名：</label><input value="${sessionScope.user.acc_lname}" class="easyui-validatebox" type="text" name="acc_lname" readonly="ture" / ><br> 
		<label>性&nbsp&nbsp&nbsp&nbsp&nbsp别：</label>
		<select value="${sessionScope.user.acc_gender}" id="acc_gender" class="easyui_combobx" style="width:70px" name="acc_gender">
			<option value="男">男</option>   
			<option value="女">女</option>   
			<option value="其它">其它</option>
			</select><br>
		<label>年&nbsp&nbsp&nbsp&nbsp&nbsp龄：</label><input value="${sessionScope.user.acc_age}" id="acc_age" class="easyui-validatebox" type="text" name="acc_age" data-options="required:true" / ><br>
		<label>职&nbsp&nbsp&nbsp&nbsp&nbsp业：</label>
			<select value="${sessionScope.user.acc_pro}" id="acc_pro" class="easyui_combobx" style="width:92px" name="acc_pro">
			<option value="0">失业</option>   
			<option value="1">工薪阶层</option>   
			<option value="2">城市白领</option>
			<option value="3">苦逼程序猿</option>
			<option value="4">自由职业</option>
			<option value="5">人生巅峰</option>
			<option value="6">其他</option>
			</select><br>
		<label>薪&nbsp&nbsp&nbsp&nbsp&nbsp资：</label>
			<select value="${sessionScope.user.acc_pay}" id="acc_pay" class="easyui_combobx" style="width:92px" name="acc_pay">
			<option value="0-2000">0-2000</option>   
			<option value="2000-4000">2000-4000</option>   
			<option value="4000-6000">4000-6000</option>
			<option value="6000-10000">6000-10000</option>
			<option value="给别人发工资">给别人发工资</option>
			</select><br>
		<label>学&nbsp&nbsp&nbsp&nbsp&nbsp历：</label>
			<select value="${sessionScope.user.acc_edu}" id="acc_edu" class="easyui_combobx" style="width:92px" name="acc_edu">
			<option value="高中以下">高中以下</option>   
			<option value="高中">高中</option>   
			<option value="本科">本科</option>
			<option value="研究生">研究生</option>
			<option value="博士">博士</option>
			</select><br>
		<label>身份证&nbsp：</label><input value="${sessionScope.user.acc_idno}" class="easyui-validatebox" type="text" id="acc_idno" name="acc_idno" data-options="required:true" / ><br>
		<label>用户电话：</label>
		<input value="${sessionScope.user.acc_tel}" class="easyui-validatebox" type="text" id="acc_tel" name="acc_tel"  data-options="required:true" / >
		<label>仅支持大陆手机号</label><br>
		<label>用户QQ&nbsp：</label><input value="${sessionScope.user.acc_qq}" id="acc_qq" class="easyui-validatebox" type="text" name="acc_qq" data-options="required:true" / ><br>
		<label>用户邮箱：</label><input value="${sessionScope.user.acc_mail}" id="acc_mail" class="easyui-validatebox" type="text" name="acc_mail" data-options="required:true" / ><br>
		<label>用户兴趣：</label><input value="${sessionScope.user.acc_hob}" class="easyui-validatebox" type="text" name="acc_hob" data-options="required:true" / ><br>
			<!-- <label>用户头像：</label><input class="easyui-validatebox" type="text" name="acc_lname" data-options="required:true" / ><br>
 				-->		
 		<label>用户地址：</label><input value="${sessionScope.user.acc_addr}" class="easyui-validatebox" type="text" name="acc_addr" data-options="required:true" / ><br>
		<label>婚姻状况：</label>
			<select value="${sessionScope.user.acc_marr}" id="acc_marr" class="easyui_combobx" style="width:70px" name="acc_marr">
			<option value="0">单身狗</option>   
			<option value="1">刚分手</option>   
			<option value="2">刚离婚</option>
			</select><br>
		<label>小孩数量：</label>
			<select value="${sessionScope.user.acc_chi}" id="acc_chi" class="easyui_combobx" style="width:70px" name="acc_chi">
			<option value="0">没有</option>   
			<option value="1">一个</option>   
			<option value="2">两个</option>
			<option value="3">一窝</option>
			</select><br>
		<label>用户类型：</label><input  value="${sessionScope.user.type.t_type}" class="easyui-validatebox" type="text"  readonly="ture" / ><br>
			<input type="submit" value="修改">
		</form>
	</div>
	
</body>
</html>