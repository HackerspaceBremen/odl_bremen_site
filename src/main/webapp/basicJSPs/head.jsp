<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/favicon.ico" type="image/x-icon">
    
    <%
		if(request.getParameter("title")!=null){
	%>
    <title><%=request.getParameter("title")%></title>
    <%
		}else{
    %>
    <title>ODL Bremen</title>
    <%
		}
    %>
    <link rel="stylesheet" href="/theme/css/foundation.css">
    <script src="/js/vendor/custom.modernizr.js"></script>
</head>