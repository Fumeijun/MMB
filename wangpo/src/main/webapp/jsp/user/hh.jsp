<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$("#uacc_pwds").blur(function(){
		var u=$("#uacc_pwd").val();
		var us=$("#uacc_pwds").val();
		if(u==""){
			alert("请输入修改密码");
			return;
		}
		if(us==""){
			alert("请输入确认密码");
			return;
		}
		if(u != us){
			alert("两次密码不一致,请重新输入");
			return;
		}
	})
})
</script>
</head>
<body>
	<div id="dd">
    <form id="ff" action="${proPath}/account/queryPwd.do" method="post">
    	<div>
    		<input type="hidden"  name="acc_id" value="${sessionScope.user.acc_id}"><br>
    		<input type="hidden"  name="acc_id" value="${sessionScope.user.acc_lname}"><br>
    	</div>
        <div>
            <%--@declare id="name"--%><label for="name">当前密码:</label>
            <input class="easyui-validatebox" type="text" name="acc_lname" data-options="required:true" />
        </div>
        <div>
            <%--@declare id="email"--%><label for="email">修改密码:</label>
            <input class="easyui-validatebox" type="text" id="uacc_pwd" name="uacc_pwd" data-options="required:true" />
        </div>
        <div>
            <%--@declare id="email"--%><label for="email">确认密码:</label>
            <input class="easyui-validatebox" type="text" id="uacc_pwds" name="uacc_pwds" data-options="required:true" />
        </div>
        <input type="submit" value="确认修改">
   		<div style="color:red" >${requestScope.errMsg}</div>
   		
    </form>
</div>
</body>
</html>