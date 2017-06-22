<%--
  Created by IntelliJ IDEA.
  User: Makise
  Date: 2017-06-20
  Time: 下午 3:21
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../../common/common.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <style type="text/css">
        .searchbox{
            margin: -3px;
        }
    </style>

    <title>活动列表</title>
    <script type="text/javascript">
        $(function(){
            $('#dg').datagrid({
                url:'${proPath}/event/userSelect.do', //支持多个条件的分页查询
                striped:true,
                fitColumns:true,
                idField:'e_id',
                rownumbers:true,
                loadMsg:"加载中，请稍等...",
                pagination:true,
                pageSize:15,
                pageList:[5,15,25,50],
                toolbar: [{
                 iconCls: 'icon-add1',
                 text:'创建活动',
                 handler: function(){
                     alert('add按钮');
                     parent.$('#win').window({
                     title:'创建活动',
                     width:600,
                     height:400,
                     modal:true,
                     content:"<iframe src='${proPath}/jsp/user/event/adde.jsp' title='创建活动' height='100%' width='100%' frameborder='0px' ></iframe>"
                 });
                 }
                 },'-',
                    {
                    iconCls: 'icon-add',
                    text:'申请参加',
                    handler: function(){
                       // alert('参加按钮');
                        var rows = $('#dg').datagrid('getSelections');
                        if(rows.length!=1){
                            alert("请选择并且只能选择一个活动！");
                            return false;
                        }
                        //2.获取行中记录ID数组
                        var id = rows[0].e_id;
                        var account = ${sessionScope.user.acc_id};
                        parent.$.messager.confirm('确认对话框', '您确认要参加吗？', function(r) {
                            if (r) {
                                var flag = 0;
                                if (rows[0].e_maxqua<=rows[0].eact.length){
                                    $.messager.alert('满员','该活动人数已满请选择其他活动！','error');
                                    flag++;
                                }else {
                                    $.each(rows[0].eact,function (index,obj) {
                                        if (obj.acc_tel==${sessionScope.user.acc_tel}){
                                            $.messager.alert('已参加','您已参加该活动，请勿重复参加！','error');
                                            flag++;
                                        }
                                    })
                                }
                            if (flag==0){
                                $.ajax({
                                    url: "${proPath}/event/joinEvent.do",
                                    type:"POST",
                                    //设置为传统方式传送参数
                                    traditional:true,
                                    data:{pk:id,account:account},
                                    success: function(html){
                                        if(html>0){
                                            $.messager.alert('成功','恭喜您，申请成功！','info');
                                        }else{
                                            $.messager.alert('失败','对不起，申请失败！','info');
                                        }
                                        //重新刷新页面
                                        $("#dg").datagrid("reload");
                                        //请除所有勾选的行
                                        $("#dg").datagrid("clearSelections");
                                    },
                                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                                        $.messager.alert('删除错误','请联系管理员！','error');
                                    },
                                    dataType:'json'
                                });
                            }
                            }
                        });

                    }
                },'-',{
                        text:"<input type='text'  id='e_stime' name='e_stime' />"
                    },'-',{
                        text:"<input type='text'  id='acc_rname' name='acc_rname'/>"
                    }],
                columns:[[
                    {checkbox:true},
                    {field:'e_id',title:'活动ID',width:100},
                    {field:'e_acc.acc_rname',title:'发起人',width:100,formatter:function  (vule,acc){
                        return acc.e_acc.acc_rname;
                    }},
                    {field:'e_atime',title:'申请时间',width:100},
                    {field:'e_acc.acc_tel',title:'联系电话',width:100,formatter:function (vule,acc){
                        return acc.e_acc['acc_tel'];
                    }},
                    {field:'e_stime',title:'开始时间',width:100},
                    {field:'e_type',title:'活动类型',width:100},
                    {field:'e_maxqua',title:'活动最大人数',width:100},
                    {field:'eact',title:'报名人数',width:100,formatter:function (eact) {
                        return eact.length;
                    }},
                    {field:'e_model',title:'活动模式',width:100},
                    {field:'e_remark',title:'活动备注',width:100},
                    {field:'join',title:'参加状态',width:100,formatter:function (vaule,row) {
                        var a=0;
                        $.each(row.eact,function (index,obj) {
                            if(obj.acc_tel==${sessionScope.user.acc_tel}){
                               a=1;
                               return false;
                            }else{
                                a=0;
                            }
                        })
                        if (a==0){
                            return"未参加";
                        }else {
                            return"已参加";
                        }
                    }}
                ]]
            });

            $('#acc_rname').searchbox({
                searcher:function(value,name){
                    var time= $('#e_stime').datebox('getValue');
                    alert(timeParam(time))
                    $('#dg').datagrid('load',{
                        'e_stime':timeParam(time),
                        'e_acc.acc_rname':likeParam(value)
                    });
                },
                prompt:'请输入申请人名字'
            });
            $('#e_stime').datebox({
                required:false,
            });
        });
        //
        function likeParam(value){
            return '%'+value+'%';
        }
        function timeParam(time) {
            if(time==null||time==''){
                return 'CURDATE()';
            }
            return time;
        }
    </script>

</head>
<body>
<table id="dg"></table>



</body>
</html>