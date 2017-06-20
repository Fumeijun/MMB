<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>报名成功_百合红娘一对一服务</title>
  <meta name="Keywords" content="百合征婚网,婚恋网,相亲网,免费沟通,免费交友,免费征婚,爱情,婚介网,婚介所,北京征婚,上海征婚,广州征婚,深圳征婚,上海交友,北京交友,广东交友,深圳交友,金百合,百合婚恋,北京婚介,上海婚介,广州婚介,深圳婚介,杭州婚介,大连婚介,南京婚介" />
  <meta name="description" content="百合网红娘一对一服务是百合网针对中高端人群推出的专业婚恋服务，全国百余家实体门店，人工红娘全程1对1提供婚恋指导，100%真实会员保证，隐私安全无泄漏。" />
	<link href="css/public.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="//static4.baihe.com/3rd-lib/jquery-1.8.3.min.js" charset="utf-8"></script>
	<script type="text/javascript" src="//www.vipbaihe.com/common/global.js"></script>
  <script>
  var _hmt = _hmt || [];
  (function() {
    var hm = document.createElement("script");
    hm.src = "//hm.baidu.com/hm.js?e5589c7493dc8870deb53779bd833991";
    var s = document.getElementsByTagName("script")[0]; 
    s.parentNode.insertBefore(hm, s);
  })();
  </script>
	</head>
	<body>
		<div id="header">
    	<div class="head-con">
    		<a href="javascript:;" class="logo"><img src="//pic1.vip.baihe.com/logo/logo-205x49.png" alt="百合网" /></a>
        <ul class="fixfloat nav">
          <li><a href="index.html" onclick="navClickIndex()">首页</a></li>
          <li><a href="intro.html" onclick="navClickIntro()">服务介绍</a></li>
          <li><a href="vip_list.html" onclick="navClickVip()">优质会员</a></li>
          <li><a href="activity_list.html" onclick="navClickActivity()">线下活动</a></li>      
          <li><a href="shop.html">百合实体店</a></li>
        </ul>
    		<div class="tel">
    			<span>红娘热线：400-1520-559</span>
    			<!-- <a href="apply.html">加入vip百合</a> -->
    		</div>
    	</div>
    </div>
    <div id="content">
    	<div class="apply">
    		<ul class="applyLi">
    			<li class="active"><i>1</i>提交报名单</li>
    			<li class="active"><i>2</i>沟通择偶意向</li>
    			<li><i>3</i>到店认证档案</li>
    			<li><i>4</i>红娘推荐异性</li>
    			<li><i class="tickIcon">对勾</i>牵手成功</li>
    		</ul>
        <div class="applySuccess">
          <h1><i></i>您的申请已被提交</h1>
          <p>我们的服务顾问会尽快与您取得联系，请保持手机畅通</p>
          <div>
            <span>接下来，您可以：</span>
            <ul>
              <li class="fl"><a href="index.html" onclick="successClickBack()">返回首页</a></li>
              <li class="fr"><a onclick="javascript:nTalker('vbaihe');successClickConsult()">在线咨询</a></li>
            </ul>
          </div>
        </div>
    	</div>
    </div>
    <div id="footer">
    	<p>京ICP备10009806号-1&nbsp;&nbsp;京公网安备110105000655号&nbsp;&nbsp;京ICP证041124号&nbsp;&nbsp;版权所有© 2005 - 2017 百合网<br />广播电视节目制作经营许可证（京）字第01303号</p>
    </div>
    <div style="position:fixed;right:50%;margin-right:-610px;height:244px;width:110px;bottom:5%;" onclick="javascript:nTalker('vbaihe');consultClickRight()" class="popImg">
      <img alt="" src="images/popImg.png" />
      <p id="popImg-p"></p>
    </div>
	</body>
  <script type="text/javascript" src="//www.vipbaihe.com/common/resource_loader.js"></script>
  <script type="text/javascript" src="js/baiduJs.js"></script>
  <script src="//static4.baihe.com/common/tongji-1.0.1.min.js"></script>
  <script>
    //返回顶部
    $(document).ready(function(){
      var oTop = document.getElementById("popImg-p");
      if($("#popImg-p").length>0){
        $("#popImg-p").on('click',function(e){
          document.documentElement.scrollTop = document.body.scrollTop =0;
          return false;
        })
        
      }
      if ($.browser.msie && (parseInt($.browser.version) <= 7)){
        if(oTop){
        oTop.style.position = 'absolute';
          var screenh = document.documentElement.clientHeight || document.body.clientHeight;
          oTop.style.top = screenh - oTop.offsetHeight -50 + "px";
          window.onscroll = function(){
          var scrolltop = document.documentElement.scrollTop || document.body.scrollTop;
          oTop.style.top = screenh - oTop.offsetHeight + scrolltop-50 +"px";
          }
        }
      }
    });
    //数据中心-web.实体店.vip报名.报名成功.帧1
    baihe.bhtongji.tongji({'event':'3','spm':'4.8.640.2207.5623'});
  　//数据中心-web.实体店.vip报名+活动报名.返回首页.帧1
    function successClickBack(){
      baihe.bhtongji.tongji({'event':'3','spm':'4.8.640.2208.5624'});
    }
  　//数据中心-web.实体店.vip报名+活动报名.在线咨询.帧1
    function successClickConsult(){
      baihe.bhtongji.tongji({'event':'3','spm':'4.8.640.1839.5625'});
    }
  　//数据中心-web.实体店.导航.首页.帧1
    function navClickIndex(){
      baihe.bhtongji.tongji({'event':'3','spm':'4.8.634.131.5584'});
    }
  　//数据中心-web.实体店.导航.服务介绍.帧1
    function navClickIntro(){
      baihe.bhtongji.tongji({'event':'3','spm':'4.8.634.1504.5585'});
    }
  　//数据中心-web.实体店.导航.优质会员.帧1
    function navClickVip(){
      baihe.bhtongji.tongji({'event':'3','spm':'4.8.634.127.5586'});
    }
  　//数据中心-web.实体店.导航.线下活动.帧1
    function navClickActivity(){
      baihe.bhtongji.tongji({'event':'3','spm':'4.8.634.1503.5587'});
    }
  　//数据中心-web.实体店.右侧.在线咨询按钮.帧1
    function consultClickRight(){
      baihe.bhtongji.tongji({'event':'3','spm':'4.8.643.2213.5632'});
    }
    //数据中心-web.实体店.导航.实体店.帧1
    function navClickShop(){
        baihe.bhtongji.tongji({'event':'3','spm':'4.8.634.2442.6230'});
    }
  </script>
</html>