<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
						username:$("#qusername").val(),
						realname:$("#qrealname").val(),
						startDate:$("#start").val(),
						endDate:$("#end").val(),
				}
				//发送ajax请求
				//$("#table").datagrid("reload",data);
				<%-- $.ajax({
					url:"<%=basePath%>userServlet?cmd=queryUsers",
					type:"post",
					dataType:"json",
					data:data,
					success:function(respData){
						$("#table").datagrid("loadData",respData)
					}
					
				}); --%>
				
			}
		});
		
		$("#kt").click(function(){
			
			var rows=$("#table").datagrid("getSelected");
			if(rows.length<1){
				alert("请选择要开通的类型")
				return;
			}
			$("#updateForm").form("clear"); 
			$("#updateDlg").dialog("open").dialog("setTitle","开通会员");
			$("#updateDlg").form("load",rows);
			$("#saveUrl").val("${proPath}/member/ktMember.do");
			/* $.ajax({
				url:$("#").val(),
				type:"post",
				dataType:"json",
				data:$("#updateForm").serialize(),
				success:function(resp){
					rlert(resp.tip);
					$("updateDlg").dialog("close");
					$("#table").datagrid("reload");
				}*/
			}) 
		});
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
</head>
<body>
	<!-- <form id="queryForm">
		<label>用户名：</label><input class="easyui-textbox" name="uname" id="qusername">
	</form> -->
	<input type="button" value="开通会员" id="kt">
<!-- 	<input type="button" value="注销会员" id="update">
 -->	<table id="table" class="easyui-datagrid"  url="${proPath}/member/queryMember.do" pagination="true"  method="post">
		<thead>
			<tr>
				<th field="ck" checkbox="true"></th>
				<th field="t_id" width="80" >会员类型ID</th>
				<th field="t_type"  width="80">会员类型</th>
				<th field="t_money"  width="80">开通金额(元)</th>
			</tr>
		</thead>
	</table>
	
	<div id="updateDlg" class="easyui-dialog" style="width:300px;height:200px" closed="true">
		<input type="hidden" id="saveUrl">
		<form id="updateForm" method="post" style="width:100%;height:100%" buttons="#update-dlg-btns">
			<input type="hidden" name="uid">
			<table align="center">
				<tr>
					<td><label>会员类型：</label></td>
					<td><input class="easyui-textbox" name="t_type" id="t_type" readonly="true"/></td>
				</tr>
				<tr>
					<td><label>应付金额：</label></td>
					<td><input class="easyui-textbox" name="t_money" id="t_money"   readonly="true"/>
					</td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr align="center">
					<td><a href="https://www.alipay.com/">支付宝</a></td>
					<td><a href="https://pay.weixin.qq.com/index.php/core/home/login?return_url=%2F
											">微信</a></td>
					<td><a href="https://www.paypal-biz.com/sem/brandV5.html?kw=Baidu_Biz_Search_T2-2
										0160527D010258&mpch=ads&rftp=7&srce=cnvr&ercc=27736-223654-500
										88-0&spid=510103929727419003">银联</a></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
				<tr>
					<td></td>
				</tr>
			</table>
			<div id="update-dlg-btns" align="center">
				<a href="javascript:void(0);" class="easyui-linkbutton" 
					iconCls="icon-ok" onclick="update();" style="width:100px;height:30px" >申请开通..</a>
					<a href="javascript:void(0);" class="easyui-linkbutton" 
					iconCls="icon-cancel" onclick="closeDlg();" style="width:100px;height:30px">取消</a>
			</div>
		</form>
		
	</div>
</body>
</html>