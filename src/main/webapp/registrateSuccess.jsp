<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp"/>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<div class="row">
			<div class="large-12 columns">
				<h3>Anmeldungsanfrage erfolgreich</h3>
			</div>
		</div>
		<div class="row">
			<div class="large-8 columns">
				<p>
				<strong>Vielen Dank für deine Anmeldung!</strong>
				<br/><br/>
				Deine Anfrage mit der ID #<%=request.getParameter("registrateId")%> 
				wurde erfolgreich vermittelt. Wir werden deine Anfrage 
				schnellstmöglich beantworten. In dieser E-mail erfolgt dann die tatsächliche
				Bestätigung oder Absage.
				<br/>
				<br/>
				Dein ODL Bremen Team
				</p>
			</div>
		</div>
		
		<jsp:include page="basicJSPs/footer.jsp"/>
	</body>
</html>
