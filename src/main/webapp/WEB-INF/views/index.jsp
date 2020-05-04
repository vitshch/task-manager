<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Task Manager App</title>
    <link href="<c:url value='/css/bootstrap.min.css' />" rel="stylesheet">
</head>
<body>
<jsp:include page="menu.jsp"/>
<div class="container">
    <div class="row">
        <h1>${message}</h1>
    </div>
</div>

</body>
</html>