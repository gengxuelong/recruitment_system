<%--
  Created by IntelliJ IDEA.
  User: LonelyWolf
  Date: 2022/12/4
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>招聘信息</title>
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
        <form method="get" action="<c:url value="/admin/query"/>">
            <div class="row" style="margin-top: 10px">
                <div class="col-md-3">
                    <div class="col-md-5" style="font-size: 20px;padding-top: 5px">类型:</div>
                    <div class="col-md-1">
                        <select name="kind" style="font-size: 25px;width: 100px;height: 35px;background: #5bc0de;color: white">
                            <c:forEach var="kindItem" items="${kindList}">
                                <option value="${kindItem}">${kindItem}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="col-md-5" style="font-size: 20px;padding-top: 5px">地点:</div>
                    <div class="col-md-1" >
                        <select name="area" style="font-size: 25px;width: 100px;height: 35px;background: #5bc0de;color: white">
                            <c:forEach var="areaItem" items="${areaList}">
                                <option value="${areaItem}">${areaItem}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="col-md-5" style="font-size: 20px;padding-top: 5px">职位关键字:</div>
                    <div class="col-md-1" >
                        <input name="keyword" class="form-control" style="width: 200px">
                    </div>
                </div>
                <div class="col-md-2">
                    <input type="submit" class="btn" style="color: white;background: #5bc0de;margin-left: 20px" value="查询">
                </div>
            </div>
        </form>
        <ul class="list-unstyled">
            <c:forEach items="${jobList}" var="job">
                <li class="show-list-item">
                    <a href="/admin/jobdetail/${job.id}">
                        <label>
                                ${job.area} ${job.kind} ${job.company} ${job.name}
                        </label>
                    </a>
                </li>
            </c:forEach>
        </ul>
    </div>
</div>
<c:import url="../component/footer.jsp"/>
</body>
<style>
    body{
        color: black;
    }

    .show-list-item{
        font-size: 20px;
        color: #4cae4c;
        margin: 8px;
    }
    .show-list-item a label{
        background: linear-gradient(to right,royalblue,plum) center/cover;
        width: 100%;
        height: 50px;
        color: #5bc0de;
        padding: 10px;
        font-size: 25px;
    }
</style>
</html>
