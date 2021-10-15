<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript">
        $(function () {
            stuinfo();
        })
        function stuinfo() {
            $.ajax({
                url:"queryStudent.do",
                type:"post",
                dataType:"json",
                success:function(resp){
                    $("#stubody").html("");
                    $.each(resp,function (i,n) {
                        $("#stubody").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.age+"</td>")
                        .append("</tr>")
                    })
                }
            })

        }
    </script>
</head>
<body>
<div align="center">
    <p>查询学生数据</p>
    <table>
        <thead>
            <tr>
                <td>id</td>
                <td>name</td>
                <td>age</td>
            </tr>
        </thead>
        <tbody id="stubody">

        </tbody>
    </table>
</div>
</body>
</html>
