<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>Login page</title>
<script type="text/javascript">
    $(function(){
        $('#dd').dialog({
            title: '登陆窗口',
            width: 350,
            height: 250,
            closed: false,
            cache: false,
            // href: 'get_content.php',
            modal: true,
            buttons:[{
                text:'登陆',
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
                text:'注册',
                handler:function(){
                    window.location.href="${proPath}/jsp/user/userMian.jsp";
                }
            }]
        });
        //禁用表单验证
        $('#ff').form("disableValidation");

    });
    
    function refresh(){
    	$("#authImg").attr("src","${proPath}/vacode/getVacode.do?ro="+Math.random())
  	
    }
    
</script>

</head>

<body>
<div id="dd">
    <form id="ff" action="${proPath}/loginAction/user.do" method="post">
        <div>
            <%--@declare id="name"--%><label for="name">账号:</label>
            <input class="easyui-validatebox" type="text" name="acc_lname" data-options="required:true" />
        </div>
        <div>
            <%--@declare id="email"--%><label for="email">密码:</label>
            <input class="easyui-validatebox" type="text" name="acc_pwd" data-options="required:true" />
        </div>
        <div style="color:red" >${requestScope.errMsg}</div>
        
     	<td>验证码：</td><td valign="bottom"><input type="text" name="vercode" size="10"/> 
     	<img alt="" src="${proPath}/vacode/getVacode.do" mce_src="authImg" id="authImg" align="absmiddle">
     	<a href="javascript:void(0)" mce_href="#" onclick="refresh()">
     	<span style="font-size:12px" mce_style="font-size:12px">看不清楚？点我呀</span></a></td>
    </form>
</div>
</body>
</html>
