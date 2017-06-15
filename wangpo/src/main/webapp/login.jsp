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
            width: 250,
            height: 150,
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
                text:'重置',
                handler:function(){
                    $('#ff').form('reset');
                }
            }]
        });
        //禁用表单验证
        $('#ff').form("disableValidation");

    });
</script>

</head>

<body>
<div id="dd">
    <form id="ff" action="${proPath}/loginAction/admin.do" method="post">
        <div>
            <%--@declare id="name"--%><label for="name">账号:</label>
            <input class="easyui-validatebox" type="text" name="adm_name" data-options="required:true" />
        </div>
        <div>
            <%--@declare id="email"--%><label for="email">密码:</label>
            <input class="easyui-validatebox" type="text" name="adm_pwd" data-options="required:true" />
        </div>
        <div style="color:red" >${requestScope.errMsg}</div>
    </form>
</div>
</body>
</html>
