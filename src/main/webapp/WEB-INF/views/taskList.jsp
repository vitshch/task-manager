<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>TaskList</title>
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="container">
    <div class="row">
        <div class="col-lg-6">
            <c:forEach items="${taskList}" var="task">
                <div class="card text-white bg-info mb-3" style="max-width: 20rem;">
                    <div class="d-flex w-100 justify-content-between">
                        <div class="card-header">${task.name}</div>
                        <h5 class="mb-1">List group item heading</h5>
                        <small>3 days ago</small>
                    </div>
                    <div class="card-header">${task.name}</div>
                    <div class="card-body">
                        <p class="card-text">${task.description}</p>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="col-lg-4 offset-lg-1">
            <form:form method="POST" action="addTask" modelAttribute="task">
                <fieldset>
                    <legend>Add new task:</legend>
                    <div class="form-group">
                        <form:label path="name">Name</form:label>
                        <form:input path="name" cssClass="form-control"/>
                    </div>
                    <div class="form-group">
                        <form:label path="description">Description</form:label>
                        <form:textarea path="description" cssClass="form-control"/>
                    </div>
                </fieldset>
                <input type="submit" value="Add"/>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
