<%--
  Created by IntelliJ IDEA.
  User: linux
  Date: 2018/1/11
  Time: 20:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<h1>你好，世界！</h1>
<button type="button" class="btn btn-default" aria-label="Left Align">
    <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
</button>

<button type="button" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-star" aria-hidden="true"></span> Star
</button>

<div class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
        Dropdown
        <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
        <li><a href="#">Action</a></li>
        <li><a href="#">Another action</a></li>
        <li><a href="#">Something else here</a></li>
        <li role="separator" class="divider"></li>
        <li><a href="#">Separated link</a></li>
    </ul>
    <button type="button" class="btn btn-primary">（首选项）Primary</button>

    <div class="input-group">
        <span class="input-group-addon" id="basic-addon1">@</span>
        <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
    </div>

    <div class="input-group">
        <input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
        <span class="input-group-addon" id="basic-addon2">@example.com</span>
    </div>

    <div class="input-group">
        <span class="input-group-addon">$</span>
        <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
        <span class="input-group-addon">.00</span>
    </div>

    <label for="basic-url">Your vanity URL</label>
    <div class="input-group">
        <span class="input-group-addon" id="basic-addon3">https://example.com/users/</span>
        <input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/static/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/static/js/bootstrap.min.js"></script>
</body>
</html>
