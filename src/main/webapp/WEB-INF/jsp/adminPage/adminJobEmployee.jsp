<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: LonelyWolf
  Date: 2022/12/14
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>职位应聘者</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/bootstrap.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/navigation.css">
    <meta charset="utf-8">
    <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
</head>
<body>
<c:import url="../component/banner.jsp"/>
<div class="wrapper">
    <div class="sidebar">
        <div class="title">管理员菜单</div>
        <ul class="nav">
            <li>
                <a class="active">
                    <i class="glyphicon glyphicon-list-alt" aria-hidden="true"></i>
                    招聘信息
                </a>
            </li>
            <li>
                <a href="/admin/account">
                    <i class="glyphicon glyphicon-tasks" aria-hidden="true"></i>
                    账号管理
                </a>
            </li>
            <li>
                <a href="/login">
                    <i class="glyphicon glyphicon-remove" aria-hidden="true"></i>
                    退出
                </a>
            </li>
        </ul>
    </div>
    <div class="content content-is-open">
        <div class="job-detail-body">
            <ul class="list-unstyled">
                <%--employeeList是List<Resume>--%>
                <c:forEach items="${employeeList}" var="employee">
                    <li class="show-list-item">
                        <a href="/admin/jobdetail/${job.id}/employeedetail/${employee.id}">
                            <label>
                                    ${employee.name} ${employee.age}岁 ${(employee.sex==0)?"女":"男"}
                            </label>
                        </a>
                    </li>
                </c:forEach>
            </ul>
            <div style="margin: 10px">
                <a href="/admin/jobdetail/${job.id}" style="margin-left: 20px">
                    <input type="button" class="btn" style="color: white;background: #5bc0de;" value="返回"/>
                </a>
            </div>

        </div>
    </div>
</div>
<c:import url="../component/footer.jsp"/>
</body>
</html>