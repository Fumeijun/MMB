<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
</head>
<script type="text/javascript">
	
	//判断两次密码是否一样
	$(function(){
		$("#uacc_pwd").blur(function(){
			var pw=$("#uacc_pwd").val();
			var rpw=$("#uacc_pwds").val();
			if(pw==""){
				alert("请输入修改密码");
				return;
			}
			if(rpw==""){
				alert("请输入确认密码");
				return;
			}
			if(rpw != pw){
				alert("两次密码不一致,请重新输入");
				return;
			}
		})
	})
	
	function closeDlg(){
			$("#updateForm").form("clear");
			$("#updateDlg").dialog("close");
		}
		
</script>
<body>
	<div id="dd" class="easyui-dialog" style="width:300px;height:300px" closed="false">
		<input type="hidden" id="saveUrl">
		<form id="updateForm" method="post" style="width: 100%; height: 100%"
			buttons="#update-dlg-btns">
			<input type="hidden" name="uid">
			<table align="center">
				<tr>
					<td><label>当前密码：</label></td>
					<td><input class="easyui-textbox" name="acc_pwd" id="acc_pwd"
						data-options="required:true" /></td>
				</tr>
				<tr>
					<td><label>修改密码：</label></td>
					<td><input class="easyui-textbox" name="uacc_pwd"
						id="uacc_pwd" data-options="required:true"
						validType="length[6,16]" class="easyui-validatebox"
						type="password" /></td>
				</tr>
				<tr>
					<td><label>确认密码：</label></td>
					<td><input class="easyui-textbox" name="uacc_pwds"
						id="uacc_pwds" data-options="required:true" class="easyui-validatebox"
						validType="equalTo['#password']" invalidMessage="两次输入密码不匹配" /></td>
				</tr>
			</table>
			<div id="update-dlg-btns" align="center">
				<a href="javascript:void(0);" class="easyui-linkbutton"
					iconCls="icon-ok" onclick="update();"
					style="width: 100px; height: 30px">保存</a> 
				<a href="javascript:void(0);" class="easyui-linkbutton"
					iconCls="icon-cancel" onclick="closeDlg();"
					style="width: 100px; height: 30px">取消</a>
			</div>
	</div>
</body>
</html>