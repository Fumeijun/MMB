<%--
  Created by IntelliJ IDEA.
  User: Makise
  Date: 2017-06-15
  Time: 下午 6:33
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../../common/common.jsp"%>
<html>
<head>
    <title>主页</title>
</head>
<body class="easyui-layout">
<!-- ---------------------------------头部信息---------------------------------------------- -->
<div data-options="region:'north',title:'进销存系统',split:true" style="height:150px;">
    欢迎您：${sessionScope.account.acc_lname}
</div>

<!-- -------------------------------------导航菜单------------------------------------- -->
<div data-options="region:'west',title:'导航菜单',split:true" style="width:180px;">

    <div id="aa" class="easyui-accordion" style="width:300px;height:200px;">

        <div title="基础数据录入">
            <!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
            <ul style="list-style: none;padding: 0px;margin:0px;">
                <li style="padding: 6px;"><a href="${proPath}/base/goURL/supplier/supplierlist.action"  title="供应商管理"
                                             style="text-decoration: none;display: block;font-weight:bold;">供应商管理</a>
                </li>
                <li style="padding: 6px;"><a href="${proPath}/base/goURL/goods/goodslist.action" title="商品管理"
                                             style="text-decoration: none;display: block;font-weight:bold;" >商品管理</a>
                </li>
            </ul>
        </div>

        <div title="进货管理">
            <!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
            <ul style="list-style: none;padding: 0px;margin:0px;">
                <li style="padding: 6px;"><a href="${proPath}/base/goURL/buyorder/insert.action" title="商品入库"
                                             style="text-decoration: none;display: block;font-weight:bold;">商品入库</a>
                </li>
                <li style="padding: 6px;"><a href="#" title="商品退货"
                                             style="text-decoration: none;display: block;font-weight:bold;" >商品管理</a>
                </li>
            </ul>
        </div>

        <div title="统计报表">
            <!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
            <ul style="list-style: none;padding: 0px;margin:0px;">
                <li style="padding: 6px;"><a href="${proPath}/base/goURL/datareport/selectsupplier.action" title="供应商采购金额统计"
                                             style="text-decoration: none;display: block;font-weight:bold;">供应商采购金额统计</a>
                </li>
                <li style="padding: 6px;"><a href="#" title="商品管理"
                                             style="text-decoration: none;display: block;font-weight:bold;" >商品管理</a>
                </li>
            </ul>
        </div>





        <div title="Title2" data-options="iconCls:'icon-reload',selected:true" style="padding:10px;">
            content2
        </div>
        <div title="Title3">
            content3
        </div>
    </div>

</div>

<!-- -----------------------------------主要内容-------------------------------------------------- -->
<div data-options="region:'center',title:'主要内容'" style="padding:5px;background:#eee;">

    <div id="tt" class="easyui-tabs" data-options="fit:true" style="width:500px;height:250px;">
        <div title="系统简介" style="padding:20px;">
            XXX进销存系统。。。。。。
        </div>
    </div>


</div>
<div id="win"></div>
</body>
</html>
