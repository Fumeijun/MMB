<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<title>修改密码</title>
<script type="text/javascript">
	$(function(){
		 $('#dd').dialog({
	            title: '修改窗口',
	            width: 350,
	            height: 250,
	            closed: false,
	            cache: false,
	            modal: true,
	            buttons:[{
	                text:'确认',
	                handler:function(){
	                    //alert('提交登陆');
	                    //启用验证
	                    $('#ff').form("enableValidation");
	                    //进行验证，如果通过（返回true)提交表单
	                    if($('#ff').form('validate')){
	                        $('#ff').submit();
	                    }
	                }
	            },{
	                text:'返回',
	                handler:function(){
	                    window.location.href="${proPath}/jsp/user/userMian.jsp";
	                }
	            }]
	        });
	        //禁用表单验证
	        $('#ff').form("disableValidation");
	})
       
  
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
            <%--@declare id="name"--%><label for="name">当前密码:</label>
            <input class="easyui-validatebox" type="text" id="acc_pwd" name="acc_lname" data-options="required:true" />
        </div>
        <div>
            <%--@declare id="email"--%><label for="email">修改密码:</label>
            <input class="easyui-validatebox" type="text" id="uacc_pwd" name="uacc_pwd" data-options="required:true" />
        </div>
        <div>
            <%--@declare id="email"--%><label for="email">确认密码:</label>
            <input class="easyui-validatebox" type="text" id="uacc_pwds" name="uacc_pwds" data-options="required:true" />
        </div>
   		<div style="color:red" >${requestScope.errMsg}</div>
    </form>
</div>
</body>
</html>