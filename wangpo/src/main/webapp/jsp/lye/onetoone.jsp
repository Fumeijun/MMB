<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../../common/common.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function(){
		$("#banknum").blur(function(){
			var reg = /^(\d{16}|\d{19})$/;
			var bank=$("#banknum").val();
			if(bank==""){
				alert("请输入银行卡号");
				return;
			}
			if(reg.test(bank)!=true){
				alert("请输入正确的银行卡号");
				return;
			}
		})
		
		$("#money").blur(function(){
			if($("#money").val()==""){
				alert("请输入充值金额");
				return;
			}
			if($("#money").val()<500){
				alert("至少充值500￥");
				return;
			}
		})
		alert($("#zhname").val());
		$("#TJ").click(function(){
			 $("#ff").form("enableValidation");
	            if ($("#ff").form("validate")) {
	                $('#ff').form('submit', {
	                    url : '${proPath}/OneToOne/insert.do',
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
	                    }
	                });
	            }
		})
	})
</script>
<title>王婆一对一服务</title>
</head>
<body>
	<div>
		<h2>王婆一对一服务内容</h2>
		<p>王婆一对一</p>
		<p>隐私无泄露</p>
		<p>100%真实会员</p>
	</div>
	<div style="margin:20px 0;"></div>
	<div class="easyui-panel" title="Register" style="width:400px;padding:30px 60px;">
		<form id="ff">
			<div style="margin-bottom:20px">
				<!--  <div>账户名:</div>-->
				<input type="hidden" class="easyui-textbox" placeholder="请输入账户名..." style="width:100%;height:32px" id="zhname" name="o_acc" value="${sessionScope.user.acc_id}">
			</div>
			<div style="margin-bottom:20px">
				<div>银行卡号:</div>
				<input class="easyui-textbox" style="width:100%;height:32px" id="banknum" >
			</div>
			<div style="margin-bottom:20px">
				<div>缴费金额:</div>
				<input class="easyui-textbox" style="width:100%;height:32px" id="money" name="o_money">
			</div>
			<div style="margin-bottom:20px">
				<div>备注:</div>
				<textarea  class="easyui-textbox" name="o_remark" data-options="multiline:true"  style="width:100%;height:100px">
				</textarea>
			</div>
			<div style="text-align: center;">
				<a href="#" class="easyui-linkbutton" iconCls="icon-ok" id="TJ">提交</a>
				<a href="#" class="easyui-linkbutton" iconCls="icon-no" id="QX">取消</a>
			</div>
		</form>
	</div>
</body>
</html>