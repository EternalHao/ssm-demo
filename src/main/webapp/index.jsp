<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/10 0010
  Time: 上午 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
</head>
<body>
<h1>登录页面</h1>
用户名：<input id="username" type="text" name="username"/><p/>
密码：<input id="password" type="password" name="password"/></p>
<input type="text" id="text">
<button id="btn" type="button">登录</button><p/>
<span id="info"></span>
<script type="text/javascript" src="static/js/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#btn").click(function(){
            console.log("123");
            $.ajax({
                //提交数据的类型 POST GET
                type:"POST",
                //提交的网址
                url:"login",
                //提交的数据
                data:{username:$("#username").val(),password:$("#password").val()},
                //返回数据的格式
                datatype: "json",//"xml", "html", "script", "json", "jsonp", "text".
                //成功返回之后调用的函数
                success:function (data){
                    $("#info").html(data.status);
                },
                //调用出错执行的函数
                error: function(error){
                   aler("ajax error : "+error);
                }
            });
        });
    });
</script>
</body>
</html>
