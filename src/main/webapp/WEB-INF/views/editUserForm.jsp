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
            <a href="/todoApp/">Пользователи</a>" |  <a href="/todoApp/FAQ">FAQ</a>
        </h2>
    </div>
    <br>

    <div class="container">
        <form:form method="post" action="/todoApp/edit/" modelAttribute="user">
            <div class="row">
                <div class="col">
                    <input type="hidden" name="userId" value="${user.userId}">
                    <spring:bind path="userName">
                        <div class="form-group col-md-6 ${status.error ? 'has-error' : ''}">
                            <label>Имя пользователя</label>
                            <form:input type="text" class="form-control" placeholder="Валерий" path="userName"></form:input>
                            <form:errors path="userName" cssClass="has-error"></form:errors>
                        </div>

                    </spring:bind>

                    <spring:bind path="surName">
                        <div class="form-group col-md-6 ${status.error ? 'has-error' : ''}">
                            <label>Фамилия</label>
                            <form:input type="text" class="form-control" placeholder="Жмышенко" path="surName"></form:input>
                            <form:errors path="surName" cssClass="has-error"></form:errors>
                        </div>

                    </spring:bind>

                </div>
                <br>
                <div class="col">
                    <spring:bind path="patronymic">
                        <div class="form-group col-md-6 ${status.error ? 'has-error' : ''}">
                            <label>Отчество</label>
                            <form:input type="text" class="form-control" placeholder="Альбертович" path="patronymic"></form:input>
                            <form:errors path="patronymic" cssClass="has-error"></form:errors>
                        </div>

                    </spring:bind>

                    <spring:bind path="login">
                        <div class="form-group col-md-6 ${status.error ? 'has-error' : ''}">
                            <label>Логин</label>
                            <form:input type="text" class="form-control" placeholder="gladiko" path="login"></form:input>
                            <form:errors path="login" cssClass="has-error"></form:errors>
                        </div>

                    </spring:bind>
                </div>
                <br>
                <div class="col">
                    <spring:bind path="password">
                        <div class="form-group col-md-6 ${status.error ? 'has-error' : ''}">
                            <label>Пароль</label>
                            <form:input type="text" class="form-control" placeholder="1488" path="password"></form:input>
                            <form:errors path="password" cssClass="has-error"></form:errors>
                        </div>

                    </spring:bind>

                </div>

            </div>
            <button type="submit" class="btn btn-primary btn-lg">Сохранить</button>
            <button type="button" class="btn btn-primary btn-lg" name="back" onclick="history.back()">Назад</button>
        </form:form>

    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>
