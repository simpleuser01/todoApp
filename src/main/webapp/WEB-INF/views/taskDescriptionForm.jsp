<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <title>Title</title>
</head>
    <body>
    <div class="container">
        <h2 class="form-heading">
            <a href="/todoApp/">Пользователи</a>  |  <a href="/todoApp/FAQ">FAQ</a>
        </h2>
    </div>
    <br>

    <div class="container">
        <form:form method="post" action="/todoApp/user/${user.userId}/task/${taskId}/desc" modelAttribute="taskLog">
            <div class="row">
                <div class="col">

                    <spring:bind path="taskDescription">
                        <div class="form-group col-md-6 ${status.error ? 'has-error' : ''}">
                            <label>Описание задания</label>
                            <form:input type="text" class="form-control" placeholder="Купить молоко, хлеб..." path="taskDescription"></form:input>
                            <form:errors path="taskDescription" cssClass="has-error"></form:errors>
                        </div>

                    </spring:bind>
                </div>

                <div class="col">
                    <spring:bind path="taskTime">
                        <div class="form-group col-md-6 ${status.error ? 'has-error' : ''}">
                            <label>Время на выполнение задания (ч.)</label>
                            <form:input type="text" class="form-control" placeholder="1" path="taskTime"></form:input>
                            <form:errors path="taskTime" cssClass="has-error"></form:errors>
                        </div>

                    </spring:bind>
            </div>

                  <button type="submit" class="btn btn-primary btn-lg">Сохранить</button>
                <button type="button" class="btn btn-primary btn-lg" name="back" onclick="history.back()">Назад</button>

        </form:form>

    </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
