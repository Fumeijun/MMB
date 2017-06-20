<%--
  Created by IntelliJ IDEA.
  User: Makise
  Date: 2017-06-19
  Time: 下午 2:30
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ include file="../../../common/common.jsp"%>
<html>
<head>
    <title>管理用户</title>
</head>
<body>

<form id="ff" method="post">
    <div>
        <%--@declare id="acc_id"--%><label for="acc_id">用户ID:</label> <input type="text" name="acc_id" />
    </div>
    <div>
        <%--@declare id="acc_lname"--%><label for="acc_lname">登录名:</label> <input type="text" name="acc_lname" />
    </div>
    <div>
        <%--@declare id="acc_rname"--%><label for="acc_rname">真实名字:</label> <input type="text" name="acc_rname" />
    </div>
    <div>
        <%--@declare id="acc_tel"--%><label for="acc_tel">注册电话:</label> <input type="text" name="acc_tel" />
    </div>
    <div>
        <%--@declare id="acc_age"--%><label for="acc_age">年龄:</label> <input type="text" name="acc_age" />
    </div>
    <div>
        <%--@declare id="acc_gender"--%><label for="acc_gender">性别:</label> <input type="text" name="acc_gender" />
    </div>
    <div>
        <%--@declare id="acc_addr"--%><label for="acc_addr">地址:</label> <input type="text" name="acc_addr" />
    </div>
    <div>
        <%--@declare id="acc_sta"--%><label for="acc_sta">用户状态:</label>
            <select id="cc" class="easyui-combobox" name="acc_sta" style=" width:200px;">
                <option value="0">正常状态</option>
                <option value="1">锁定状态</option>
                <option value="2">封禁状态</option>
            </select>
    </div>
    <div>
        <%--@declare id="acc_type"--%><label for="acc_type">用户类型：</label>
        <select id="cc" class="easyui-combobox" name="type.t_id" style=" width:200px;">
            <option value="1">一般用户</option>
            <option value="2">普通会员</option>
            <option value="3">黄金会员</option>
            <option value="4">铂金会员</option>
        </select>
    </div>
    <div>
        <input id="btn" type="button" value="提交" />
    </div>
</form>

<script type="text/javascript">
    $(function() {
        var win = parent.$("iframe[title='查看用户']").get(0).contentWindow;
        var row = win.$('#dg').datagrid("getSelected");
        //var type=null;
       // alert(row.acc_id+"|"+row.type.t_id);


        $('#ff').form('load',{
            acc_id : row.acc_id,
            acc_lname : row.acc_lname,
            acc_rname : row.acc_rname,
            acc_tel : row.acc_tel,
            acc_age:row.acc_age,
            acc_gender :row.acc_gender,
            acc_addr :row.acc_addr,
            acc_sta :row.acc_sta,
            'type.t_id':row.type.t_id
        });

        //禁用验证
        $("#ff").form("disableValidation");

        $("#btn").click(function() {
            $("#ff").form("enableValidation");
            if ($("#ff").form("validate")) {
                $('#ff').form('submit', {
                    url : '${proPath}/account/check.do',
                    onSubmit : function() {
                        return true;
                    },
                    success : function(count) {
                        //可以定义为对应消息框
                        if(count>0){
                            alert("成功");
                        }else{
                            alert("失败");
                        }

                        parent.$("#win").window("close");
                        win.$("#dg").datagrid("reload");
                    }
                });

            }

        });

    });
</script>
</body>
</html>