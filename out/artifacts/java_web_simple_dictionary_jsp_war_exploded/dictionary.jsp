<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 13/11/2019
  Time: 8:12 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%
    Map<String,String> dic = new HashMap<>();
%>
<%
    dic.put("hello","xin chào");
    dic.put("how","thế nào");
    dic.put("book","quyển vở");
    dic.put("computer","Máy tính");

    String search = request.getParameter("search");

    String result = dic.get(search);
    if (result != null) {
        out.println("Word: " +search);
        out.println("Result: " + result);
    }else{
        out.println("Not found");
    }

%>
</body>
</html>
