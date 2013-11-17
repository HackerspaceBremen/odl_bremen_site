<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp">
	  <jsp:param name="title" value="ODL Administration" />
	</jsp:include>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<div class="row">
			<div class="large-12 columns">
				<h3>Admin: Geräteübersicht</h3>
			</div>
		</div>
		<div class="row">
			<div class="large-10 columns">
				<jsp:include page="basicJSPs/deviceList.jsp">
				  	<jsp:param name="admin" value="true" />
				</jsp:include>
			</div>
			<jsp:include page="basicJSPs/adminMenue.jsp"/>
		</div>
		
		<jsp:include page="basicJSPs/footer.jsp"/>
	</body>
</html>
