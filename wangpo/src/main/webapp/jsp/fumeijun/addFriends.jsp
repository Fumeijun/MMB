<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../../common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加好友</title>
<script type="text/javascript">
	$(function(){
		//通过table标签得的一个分页插件
		var pp=$("#table").datagrid("getPager");	
		$(pp).pagination({			
			pageSize:10,
			pageList:[2,3,5,10],
			beforePageText:"第",	
			afterPageText:"页    共{pages}页",
			displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录',  
			onSelectPage:function(curPage,pageSize){
				var data={
						curPage:curPage,
						pageSize:pageSize,
						acc_lname:$("#qacc_lname").val(),
						acc_gender:$("#qacc_gender").val(),
						acc_age:$("#qacc_age").val(),
						acc_edu:$("#qacc_edu").val,
						acc_sta:$("#qacc_sta").val,
						acc_qq:$("#qacc_qq").val,
						acc_hob:$("#qacc_hob").val,
						acc_marr:$("#qacc_marr").val,
						startDate:$("#start").val(),
						endDate:$("#end").val(),
				}
				//发送ajax请求
				$.ajax({
					url:"${proPath}/addAction/queryUsers.do",
					type:"post",
					dataType:"json",
					data:data,
					success:function(respData){
						$("#table").datagrid("loadData",respData)
					}
					
				});
				
			}
		});
		$("#addFriends").click(function(){
			$("#updateForm").form("clear");
			$("#updateDlg").dialog("open").dialog("setTitle","增加用户信息");
			$("#saveUrl").val("${proPath}/addAction/queryUsers.do");
			$("#uusername").textbox({
				readonly:false,
				required:false
			});
			
		});
		
		$("#delete").click(function(){
			var rows=$("#table").datagrid("getSelections");
			if(rows.length>0){
				var idArr=new Array();
				$.each(rows,function(index,row){
					//将值放入数组里面
					idArr.push(row.id);
				})
				
				$.ajax({
					url:"${proPath}/addAction/queryUsers.do",
					type:"post",
					dataType:"json",
					data:{
						ids:idArr.toString()
					},
					success:function(data){
						//var json=eval("("+data+")");
						alert(data.tip);
						$("#table").datagrid("reload");
					}						
				})
			}else{
				alert("请选择要删除的数据");
			}
		})
		
		$("#query").click(function(){
			var data={
					curPage:$("#table").datagrid("getPager").pagination("options").pageNumber,
					pageSize:$("#table").datagrid("getPager").pagination("options").pageSize,
					acc_lname:$("#qacc_lname").val(),
					acc_gender:$("#qacc_gender").val(),
					acc_age:$("#qacc_age").val(),
					acc_edu:$("#qacc_edu").val,
					acc_sta:$("#qacc_sta").val,
					acc_qq:$("#qacc_qq").val,
					acc_hob:$("#qacc_hob").val,
					acc_marr:$("#qacc_marr").val,
					startDate:$("#start").val(),
					endDate:$("#end").val(),
			}
			//发送ajax请求
			$("#table").datagrid("load",data);
		})
		
	})
	function update(){
	
		$("#updateForm").form("submit",
				{
					url:$("#saveUrl").val(),
					onSubmit:function(){
				
						return $(this).form('validate');
					},
					success:function(data){
						var json=eval("("+data+")");
						alert(json.tip);
						$("#updateDlg").dialog("close");
						$("#table").datagrid("reload");
					}
			
				});
		
	}
	function closeDlg(){
		$("#updateForm").form("clear");
		$("#updateDlg").dialog("close");
	}
	
</script>
	</script>
</head>
<body>
		<input type="button" value="查询" id="query">
		<input	type="button" id="addFriends" value="添加好友">
		<form id="queryForm">
		<label>名称:</label><input class="easyui-textbox" name="acc_lname" id="qacc_lname" value="请输入姓名">
		<label>性别:</label><input class="easyui-textbox" name="acc_gender" id="qacc_gender">
		<label>年龄:</label><input class="easyui-textbox" name="acc_age" id="qacc_age"><br>
		<label>学历:</label><input class="easyui-textbox" name="acc_edu" id="qacc_edu">
		<label>状态:</label><input class="easyui-textbox" name="acc_sta" id="qacc_sta">
		<label>QQ:</label><input class="easyui-textbox" name="acc_qq" id="qacc_qq"><br>
		<label>兴趣:</label><input class="easyui-textbox" name="acc_hob" id="qacc_hob">
		<label>地址:</label><input class="easyui-textbox" name="acc_marr" id="qacc_marr">
	</form>

	<table id="table" class="easyui-datagrid"  url="${proPath}/addAction/addFriends.do" pagination="true"  method="post">
		<thead>
		<tr>
			<th field="ck" checkbox="true"></th>
			<th field="id" style="display: none" ></th>
			<th field="acc_id"  width="90">账号</th>
			<th  field="acc_lname"  width="80">名称</th>
			<th  field="acc_gender"  width="80">性别</th>
			<th  field="acc_age"  width="80">年龄</th>
			<th  field="acc_pro"  width="80">职业</th>
			<th  field="acc_edu"  width="80">学历</th>
			<th  field="acc_qq"  width="80">QQ</th>
			<th  field="acc_tel"  width="80">电话号码</th>
			<th  field="acc_hob"  width="80">兴趣</th>
			<th  field="acc_ava"  width="80">头像</th>
			<th field="acc_addr"  width="80">地址</th>
			<th field="acc_page"  width="80">主页</th>
			<th field="acc_sta"  width="80">状态</th>
		</tr>
		
		</thead>
	</table>
<!-- 		<div id="selectaccount" class="easyui-dialog" style="width:300px;height:300px" closed="true">
		<input type="hidden" id="saveUrl">
		<form id="selecForm" method="post" style="width:100%;height:100%" buttons="#update-dlg-btns">
			<input type="hidden" name="id">
			<table align="center">
				<tr>
					<td><label>账户：</label></td>
					<td><input class="easyui-textbox" name="acc_id" id="acc_id" data-options="readonly:'readonly', required:true"/></td>
				</tr>
				<tr>
					<td><label>名称：</label></td>
					<td><input class="easyui-textbox" name="acc_lname" id="acc_lname"  required="true"/></td>
				</tr>
				
				<tr>
					<td><label>年龄：</label></td>
					<td><input class="easyui-textbox" name="acc_age"  id="acc_age" required="true"/></td>
				</tr>
				<tr>
					<td><label>性别：</label></td>
					<td><input class="easyui-textbox" name="acc_gender"  id="acc_gender" required="true"/></td>
				</tr>
				<tr>
					<td><label>学历：</label></td>
					<td><input class="easyui-datebox"  name="acc_edu"  id="acc_edu" required="true"/></td>
				</tr>
				<tr>
					<td><label>QQ：</label></td>
					<td><input class="easyui-validatebox"  name="acc_qq"  id="acc_qq" validType="email" /></td>
				</tr>
			</table>
			
			<div id="update-dlg-btns" align="center">
				<a href="javascript:void(0);" class="easyui-linkbutton" 
					iconCls="icon-ok" onclick="update();" style="width:100px;height:30px" >保存</a>
					<a href="javascript:void(0);" class="easyui-linkbutton" 
					iconCls="icon-cancel" onclick="closeDlg();" style="width:100px;height:30px">取消</a>
			</div>
		</form>
		
	</div> -->
	
	
</body>
</html>