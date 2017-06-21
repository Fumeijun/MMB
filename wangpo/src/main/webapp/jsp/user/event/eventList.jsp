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
                     iconCls: 'icon-add',
                     text:'添加',
                     handler: function(){
                     alert('add按钮');
                     parent.$('#win').window({
                     title:'添加用户',
                     width:600,
                     height:400,
                     modal:true,
                     content:"<iframe src='${proPath}/' title='添加用户' height='100%' width='100%' frameborder='0px' ></iframe>"

                 });
                 }
                 },'-',{
                    iconCls: 'icon-edit',
                    text:'修改',
                    handler: function(){
                        alert('edit按钮');
                        var rows = $('#dg').datagrid('getSelections');
                        if(rows.length!=1){
                            alert("请选择并且只能选择一条修改的记录！");
                            return false;
                        }

                        parent.$('#win').window({
                            title:'修改用户信息',
                            width:600,
                            height:400,
                            modal:true,
                            content:"<iframe src='${proPath}/jsp/admin/account/accUpdate.jsp ' title='修改用户信息' height='100%' width='100%' frameborder='0px' ></iframe>"
                        });

                    }
                }
                    ,'-',{
                        iconCls: 'icon-remove',
                        text:'删除',
                        handler: function(){
                            //1.获取选择的行，判断是否有选中
                            var rows = $('#dg').datagrid("getSelections");
                            if(rows.length==0){
                                alert("请选择需要删除的记录！");
                                return false;
                            }
                            //2.获取行中记录ID数组
                            var ids = new Array();
                            for(var i=0;i<rows.length;i++){
                                alert(rows[i].acc_id);
                                ids[i]=rows[i].acc_id;
                            }
                            parent.$.messager.confirm('删除对话框', '您确认要删除吗？', function(r) {
                                if (r) {
                                    alert(r);
                                    $.ajax({
                                        url: "${proPath}/account/deleteList.do",
                                        type:"POST",
                                        //设置为传统方式传送参数
                                        traditional:true,
                                        data:{pks:ids},
                                        success: function(html){
                                            if(html>0){
                                                alert("恭喜您，删除成功，共删除了"+html+"条记录！");
                                            }else{
                                                alert("对不起，删除失败，请联系管理员！");
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
                            });


                        }
                    },'-',{
                        text:"<input type='text'  id='e_stime' name='e_stime' required='required'/>"
                    },'-',{
                        text:"<input type='text'  id='acc_rname' name='acc_rname'/>"
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
                    {field:'eact',title:'参加人数',width:100,formatter:function (eact){
                        return eact.length}},
                    {field:'e_model',title:'活动模式',width:100},
                    {field:'e_remark',title:'活动模式',width:100}
                ]]
            });

            $('#acc_rname').searchbox({
                searcher:function(value,name){
                    var time= $('#e_stime').datebox('getValue')
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