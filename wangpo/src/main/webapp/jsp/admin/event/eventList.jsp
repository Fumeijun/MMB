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
                url:'${proPath}/event/adminSelect.do', //支持多个条件的分页查询
                striped:true,
                fitColumns:true,
                idField:'e_id',
                rownumbers:true,
                loadMsg:"加载中，请稍等...",
                pagination:true,
                pageSize:15,
                pageList:[5,15,25,50],
                toolbar: [/*{
                 iconCls: 'icon-add',
                 text:'添加',
                 handler: function(){
                 alert('add按钮');
                 parent.$('#win').window({
                 title:'添加用户',
                 width:600,
                 height:400,
                 modal:true,
                 content:"<iframe src='￥{proPath}/' title='添加用户' height='100%' width='100%' frameborder='0px' ></iframe>"

                 });
                 }
                 },'-',*/{
                    iconCls: 'icon-edit',
                    text:'审核',
                    handler: function(){
                        var rows = $('#dg').datagrid('getSelections');
                        if(rows.length!=1){
                            alert("请选择并且只能选择一条修改的记录！");
                            return false;
                        }

                        parent.$('#win').window({
                            title:'审核活动',
                            width:300,
                            height:400,
                            modal:true,
                            content:"<iframe src='${proPath}/jsp/admin/event/updateEvent.jsp ' title='审核活动' height='100%' width='100%' frameborder='0px' ></iframe>"
                        });

                    }
                },'-',{
                        text:"<input type='text' id='acc_rname' name='acc_rname'/>"
                    }],
                columns:[[
                    {checkbox:true},
                    {field:'e_id',title:'活动ID',width:100},
                    {field:'e_acc.acc_rname',title:'发起人',width:100,formatter:function  (vule,acc){
                        return acc.e_acc['acc_rname'];
                    }},
                    {field:'e_atime',title:'申请时间',width:100},
                    {field:'e_acc.acc_tel',title:'联系电话',width:100,formatter:function (vule,acc){
                        return acc.e_acc['acc_tel'];
                    }},
                    {field:'e_stime',title:'开始时间',width:100},
                    {field:'e_type',title:'活动类型',width:100},
                    {field:'e_maxqua',title:'活动最大人数',width:100},
                    {field:'e_model',title:'活动模式',width:100},
                    {field:'e_sta',title:'审核状态',width:100}
                ]]
            });

            $('#acc_rname').searchbox({
                searcher:function(value,name){
                    $('#dg').datagrid('load',{
                        'e_acc.acc_rname':likeParam(value),
                    });
                },
                prompt:'请输入申请人名字'
            });

        });
        //
        function likeParam(value){
                return '%'+value+'%';
        }

    </script>

</head>
<body>
<table id="dg"></table>



</body>
</html>