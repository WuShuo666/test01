<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<head>
    <base href="<%=basePath%>"/>
    <title>学生管理</title>
</head>
<body>
    <div align="center">
        <p>整合开发</p>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <td><a href="addStudent.jsp">注册学生</a> </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td><a href="listStudent.jsp">查询学生</a> </td>
            </tr>
        </table>
    </div>
</body>
</html>
