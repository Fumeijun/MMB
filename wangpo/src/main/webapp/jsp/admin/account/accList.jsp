<%--
  Created by IntelliJ IDEA.
  User: Makise
  Date: 2017-06-16
  Time: 下午 4:45
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

    <title>supplier list page</title>
    <script type="text/javascript">
        $(function(){
            $('#dg').datagrid({
                url:'${proPath}/account/selectPageUseDyc.do', //支持多个条件的分页查询
                striped:true,
                fitColumns:true,
                idField:'acc_id',
                rownumbers:true,
                loadMsg:"加载中，请稍等...",
                pagination:true,
                pageSize:25,
                pageList:[5,15,25,50],
                //支持单个关键字分页查询
                /*     queryParams:{
                 keyWord:'%%'
                 }, */
                //支持多条件分页查询
                /*  queryParams:{
                 supName:'%%',
                 supAddress:'%%'
                 },  */

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
                            title:'用户信息',
                            width:600,
                            height:400,
                            modal:true,
                            content:"<iframe src='${proPath}/' title='修改用户信息' height='100%' width='100%' frameborder='0px' ></iframe>"
                        });

                    }
                }
                    ,'-',{
                        iconCls: 'icon-remove',
                        text:'删除',
                        handler: function(){
                            //alert('del按钮');
                            /*
                             1.获取选择的行，判断是否有选中
                             2.获取行中记录ID数组
                             3.确认是否删除
                             4.提交删除请求
                             5.刷新当前页面（列表部分）
                             */
                            //1.获取选择的行，判断是否有选中
                            var rows = $('#dg').datagrid("getSelections");
                            if(rows.length==0){
                                alert("请选择需要删除的记录！");
                                return false;
                            }
                            //2.获取行中记录ID数组
                            var ids = new Array();
                            for(var i=0;i<rows.length;i++){
                                alert(rows[i].supId);
                                ids[i]=rows[i].supId;
                            }


                            parent.$.messager.confirm('删除对话框', '您确认要删除吗？', function(r) {
                                if (r) {
                                    alert(r);
                                    $.ajax({
                                        url: "${proPath}/account/deleteUser.do",
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
                        text:"<input type='text' id='acc_rname' name='acc_rname'/>"
                    },'-',{
                        text:"<input type='text' id='acc_tel' name='acc_tel'/>"
                    }],

                columns:[[
                    {checkbox:true},
                    {field:'acc_id',title:'用户ID',width:100},
                    {field:'acc_lname',title:'登录名',width:100},
                    {field:'acc_rname',title:'真实名字',width:100},
                    {field:'acc_tel',title:'联系电话',width:100},
                    {field:'acc_gender',title:'用户性别',width:100},
                    {field:'acc_age',title:'用户年龄',width:100},
                    {field:'acc_type',title:'用户类型',width:100},
                    {field:'acc_sta',title:'用户状态',width:100,
                    }
                ]]
            });

            $('#acc_tel').searchbox({
                searcher:function(value,name){
                    $('#dg').datagrid('load',{
                        acc_rname:likeParam($('#acc_rname').val()),
                        acc_tel:likeParam(value)
                    });
                },
                prompt:'请输入电话号码'
            });

        });
        //
        function likeParam(value){
            if(value==""){
                return "";
            }else{
                return '%'+value+'%';
            }
        }

    </script>

</head>
<body>
<table id="dg"></table>



</body>
</html>