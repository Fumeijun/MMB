<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../../common/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
    <script type="text/javascript">
        $(function() {
            $("a[title]").click(function() {
                var title = this.title;
                var text = this.href;
                alert(title);
                //如果对应的面板已经存在，就选择，否则就添加新的面板
                if($('#tt').tabs("exists",title)){
                    $('#tt').tabs("select",title);
                }else{
                    $('#tt').tabs('add',{
                        title:title,
                        //selected: true,
                        closable:true,
                        content:"<iframe src='"+text+"' title='"+this.title+"' height='100%' width='100%' frameborder='0px' ></iframe>"
                    });
                }

                return false;

            });
        });

    </script>

</head>
<body class="easyui-layout">
<!-- ---------------------------------头部信息---------------------------------------------- -->
<div data-options="region:'north',title:'王婆婚恋交友系统',split:true" style="height:150px;">
    <h1>欢迎您：${sessionScope.admin.adm_name}</h1>
</div>

<!-- -------------------------------------导航菜单------------------------------------- -->
<div data-options="region:'west',title:'导航菜单',split:true" style="width:180px;">

    <div id="aa" class="easyui-accordion" style="width: auto;height:auto;">

        <div title="用户管理">
            <!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
            <ul style="list-style: none;padding: 0px;margin:0px;width: auto;height: auto">
                <li style="padding: 6px; width: auto;height: auto"><a href="${proPath}/jsp/admin/account/accList.jsp"  title="查看用户"
                                             style="text-decoration: none;display: block;font-weight:bold;">查看用户</a>
                </li>
                <li style="padding: 6px;width: auto;height: auto"><a href="${proPath}/jsp/admin/account/registerList.jsp" title="管理注册用户"
                                             style="text-decoration: none;display: block;font-weight:bold;" >管理注册用户</a>
                </li>
            </ul>
        </div>

        <div title="活动管理">
            <!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
            <ul style="list-style: none;padding: 0px;margin:0px;width: auto;height: auto">
                <li style="padding: 6px;width: auto;height: auto"><a href="${proPath}/jsp/admin/event/eventList.jsp" title="管理活动"
                                             style="text-decoration: none;display: block;font-weight:bold;" >管理活动</a>
                </li>
            </ul>
        </div>

        <div title="王婆一对一">
            <!-- list-style: none去左边的点；text-decoration: none：去超链接下划线,title用来区分后继定位这里的超链接 -->
            <ul style="list-style: none;padding: 0px;margin:0px;width: auto;height: auto">
                <li style="padding: 6px;width: auto;height: auto"><a href="${proPath}/jsp/admin/one4one/one4oneList.jsp" title="王婆一对一"
                                             style="text-decoration: none;display: block;font-weight:bold;">王婆一对一</a>
                </li>
                <li style="padding: 6px;width: auto;height: auto"><a href="#" title="王婆一对一"
                                             style="text-decoration: none;display: block;font-weight:bold;" >王婆一对一</a>
                </li>
            </ul>
        </div>
    </div>

</div>

<!-- -----------------------------------主要内容-------------------------------------------------- -->
<div data-options="region:'center',title:'主要内容'" style="padding:5px;background:#eee;">

    <div id="tt" class="easyui-tabs" data-options="fit:true" style="width:500px;height:250px;">
        <div title="系统简介" style="padding:20px;">
           王婆婚恋交友系统。。。。。。
        </div>
    </div>


</div>
<div id="win"></div>
</body>
</html>