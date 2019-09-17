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
        <div class="row">
            <div class="col">
                <c:forEach items="${tasks}" var="task">
                    <c:if test="${task.taskState eq 'Выполнено'}">
                        <h2 class="form-heading" style="color: #2acf1e ">${task.taskName}</h2>
            </div
                    </c:if>
                    <c:if test="${task.taskState eq 'Не выполнено'}">
                              <h2 class="form-heading" style="color : #ff0000 ">${task.taskName}</h2>
                    </c:if>

                <br>

                <div class="col-md-offset-1">


                    <c:forEach items="${task.logs}" var="log">

                        <div>${log.taskDescription}</div>
                        <div>${log.taskTime} ч.</div>

                        <br>
                    </c:forEach>
                    <br>
                </div>

                    <div class="col">
                        <div><a href="/todoApp/user/${user.userId}/task/${task.taskId}/desc">Добавть описание к заданию</a> </div>
                        <div><a href="/todoApp/user/${user.userId}/task/${task.taskId}">Редактировать задание</a> </div>
                    </div>


                </c:forEach>
            </div>
        <br>
    </div>

    <div class="container">
        <div class="h3">
            Добавить новое задание
        </div>
    </div>

    <div class="container">
        <form:form method="post" action="/todoApp/user/${user.userId}" modelAttribute="task">
            <div class="row">
                <div class="col">

                    <spring:bind path="taskName">
                        <div class="form-group col-md-6 ${status.error ? 'has-error' : ''}">
                            <label>Название задачи</label>
                            <form:input type="text" class="form-control" placeholder="Сходить в магазин" path="taskName"></form:input>
                            <form:errors path="taskName" cssClass="has-error"></form:errors>
                        </div>

                    </spring:bind>

                 </div>

                </div>
                    <div class="row">
                    <br>
                        <div class="col">

                            <div class="form-group col-md-6">
                                <label>Состояние задания</label>
                                <select class="custom-select" name="taskState">
                                    <option value="Выполнено">Выполнено</option>
                                    <option value="Не выполнено">Не выполнено</option>
                                </select>
                            </div>
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
