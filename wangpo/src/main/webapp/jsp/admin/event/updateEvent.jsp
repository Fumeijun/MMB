<%--
  Created by IntelliJ IDEA.
  User: Makise
  Date: 2017-06-21
  Time: 下午 3:04
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../../common/common.jsp"%>
<html>
<head>
    <title>审核活动</title>
</head>
<body>

<form id="ff" method="post">
    <div>
        <%--@declare id="e_id"--%><label for="e_id">活动ID:</label> <input type="text" name="e_id" />
    </div>
    <div>
        <%--@declare id="e_acc"--%><label for="e_acc">申请人名字:</label> <input type="text" name="e_acc.acc_rname" />
    </div>
    <div>
        <%--@declare id="e_atime"--%><label for="e_atime">申请时间:</label> <input type="text" name="e_atime" />
    </div>
    <div>
        <%--@declare id="e_type"--%><label for="e_type">活动类型:</label> <input type="text" name="e_type" />
    </div>
    <div>
        <%--@declare id="e_maxqua"--%><label for="e_maxqua">最大人数:</label> <input type="text" name="e_maxqua" />
    </div>
    <div>
        <%--@declare id="e_model"--%><label for="e_model">活动模式:</label> <input type="text" name="e_model" />
    </div>
    <div>
        <%--@declare id="e_stime"--%><label for="e_stime">开始时间:</label> <input type="text" name="e_stime" />
    </div>
    <div>
        <%--@declare id="e_sta"--%><label for="e_sta">活动状态:</label>
        <select id="cc" class="easyui-combobox" name="e_sta" style=" width:80px;">
            <option value="0">未审核</option>
            <option value="1">审核通过</option>
            <option value="2">审核未通过</option>
        </select>
    </div>
    <div>
        <%--@declare id="e_remark"--%><label for="e_remark">备注：</label><input type="text" name="e_remark" style="width: auto;height: 80px" />
    </div>
    <div>
        <input id="btn" type="button" value="提交" />
    </div>
</form>

<script type="text/javascript">
    $(function() {
        var win = parent.$("iframe[title='管理活动']").get(0).contentWindow;
        var row = win.$('#dg').datagrid("getSelected");
        //var type=null;
        // alert(row.acc_id+"|"+row.type.t_id);


        $('#ff').form('load',{
            e_id : row.e_id,
            'e_acc.acc_rname': row.e_acc.acc_rname,
            e_atime : row.e_atime,
            e_type : row.e_type,
            e_maxqua:row.e_maxqua,
            e_model :row.e_model,
            e_stime :row.e_stime,
            e_sta :row.e_sta,
            e_remark:row.e_remark
        });

        //禁用验证
        $("#ff").form("disableValidation");

        $("#btn").click(function() {
            $("#ff").form("enableValidation");
            if ($("#ff").form("validate")) {
                $('#ff').form('submit', {
                    url : '${proPath}/event/check.do',
                    onSubmit : function() {
                        return true;
                    },
                    success : function(count) {
                        //可以定义为对应消息框
                        if(count>0){
                            alert("审核成功");
                        }else{
                            alert("审核失败");
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