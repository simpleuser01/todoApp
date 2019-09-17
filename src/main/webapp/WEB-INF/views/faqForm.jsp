<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/custom.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h2 class="form-heading">
        <a href="/todoApp/">Пользователи</a> |  <a href="/todoApp/FAQ">FAQ</a>
    </h2>
</div>
<br>
    <div class="container">
        <div class="row">
            <div>
                На главной странице отображается список пользователей, для каждого пользователя доступны следущие функции:
                <ul>
                    <li>посмотреть информацию о заданиях;</li>
                    <li>изменить информацию о пользователю;</li>
                    <li>удалить пользователя.</li>
                </ul>
                Также можно создать нового пользователя, все поля должны быть заполнены.
            </div>
            <br>
            <div>
                На странице информация о задаче зеленым цветом отображается выполненная задача(красным не выполненная).
                Можно добавлять новые задачи, редактировать нынешние, добавлять новое описание к задаче.
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
