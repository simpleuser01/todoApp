<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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

<body class="bg-light">
<div class="container">
    <h2 class="form-heading">
        <a href="/todoApp/">Пользователи</a>  |  <a href="/todoApp/FAQ">FAQ</a>
    </h2>
</div>
<br>
<div class="container">
    <div class="container">
        <table  class="table">
            <thead>
                <tr>

                    <th scope="col">Имя пользователя</th>
                    <th scope="col">Фамилия</th>
                    <th scope="col">Отчество</th>
                    <th scope="col">Логин</th>
                    <th scope="col">Пароль</th>
                </tr>
            </thead>

           <c:forEach items="${users}" var="user">
               <tr>
                   <td>${user.userName}</td>
                   <td>${user.surName}</td>
                   <td>${user.patronymic}</td>
                   <td>${user.login}</td>
                   <td>${user.password}</td>
                   <td><a href="/todoApp/user/${user.userId}">Инфо о зад.</a></td>
                   <td><a href="/todoApp/edit/${user.userId}">Редактировать</a></td>
                   <td><a href="/todoApp/delete/${user.userId}">Удалить</a></td>
               </tr>
           </c:forEach>
        </table>
    </div>
</div>
<br>

    <div class="container">
        <form:form method="post" action="/todoApp/add" modelAttribute="user">
            <div class="row">
                <div class="col">
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
        </form:form>

    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>


</html>
