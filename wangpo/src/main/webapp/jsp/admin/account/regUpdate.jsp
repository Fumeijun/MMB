<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../common/common.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript">
	$(function(){
		//获取title为管理注册用户的父页面
		 var win = parent.$("iframe[title='管理注册用户']").get(0).contentWindow;
		//获取父页面的中所选取
	     var row = win.$('#dg').datagrid("getSelected");
	     //把父页面(节点)所选中的数据，从数据网格中加载到当前页面的form表单中
	     $('#regform').form('load',{
	    	 	//对应form表单的name属性 : 对应数据网格中所选中的数据
	    	 	rid : row.rid,
	    	 	rname : row.rname,
	    	 	rpwd : row.rpwd,
	    	 	rage : row.rage,
	    	 	ridno:row.ridno,
	    	 	rtel :row.rtel,
	    	 	rsta :row.rsta,
	        });
	     //给确定按钮绑定单击事件，提交form表单
	     $("#determine").click(function() {
	            //$("#ff").form("enableValidation");
	            if ($("#regform").form("validate")) {
	                $('#regform').form('submit', {
	                    url : '${proPath}/register/insertL.do',
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

	})
</script>
<title>用户审核</title>
</head>
<body>
	<form action="" id="regform" method="post">
		<div style="margin-bottom:20px">
		<samp>用户I&nbsp;D:</samp><input type="text" id="rid" name="rid"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>账户名称:</samp><input type="text" id="rname" name="rname"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>密&nbsp;&nbsp;码:</samp><input type="text" id="rpwd" name="rpwd"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>年&nbsp;&nbsp;龄:</samp><input type="text" id="rage" name="rage"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>身份证号:</samp><input type="text" id="ridno" name="ridno"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>电&nbsp;&nbsp;话:</samp><input type="text" id="rtel" name="rtel"><br>
		</div>
		<div style="margin-bottom:20px">
		<samp>审核状态:</samp><select id="rsta" name="rsta" style="width:80px;" >
			<option value="0">未审核</option>
			<option value="1">已审核</option>
		</select><br>
		</div>
		<input type="button" value="确定" id="determine">
	</form>
</body>
</html>