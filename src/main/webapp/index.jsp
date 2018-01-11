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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登陆界面</title>

    <!-- Bootstrap -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>登录页面</h1>
<div class="input-group" style="width: 400px">
    <span class="input-group-addon" id="basic-addon1">账户：</span>
    <input id="username" type="text" class="form-control" placeholder="输入用户名：" aria-describedby="basic-addon1">
</div>
<div class="input-group" style="width: 400px">
    <span class="input-group-addon" id="basic-addon2">密码：</span>
    <input id="password" type="password" class="form-control" placeholder="输入密码：" aria-describedby="basic-addon2">
</div>
<button id="btn" type="button" class="btn btn-primary" style="width: 400px">登陆</button>
<div id="info" class="alert alert-success" role="alert">...</div>

<script type="text/javascript" src="static/jquery.min.js"></script>
<script src="/static/js/bootstrap.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#btn").click(function(){
            $.ajax({
                //提交数据的类型 POST GET
                type:"POST",
                //提交的网址
                url:"login",
                //提交的数据
                data:{username:$("#username").val(),password:$("#password").val()},
                //返回数据的格式
                datatype: "json",
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
