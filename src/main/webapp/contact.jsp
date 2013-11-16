<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp"/>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<div class="row">
			<div class="large-12 columns">
				<h3>Kontaktaufnahme</h3>
			</div>
		</div>
		<div class="row">
			<!-- TODO Erklärung: Feedback und Kontaktaufnahme -->	
		</div>
		<form action="/registrate">
			<div class="row">
				<div class="large-8 columns">
					<label>Vollständiger Name</label>
					<input type="text">
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<label>E-Mail</label>
					<input type="email">
				</div>
			</div>
			<div class="row">
		      <div class="large-8 columns">
		        <label>Dein Text</label>
		        <textarea placeholder="Schreibe hier dein Anliegen/Feedback nieder"></textarea>
		      </div>
		    </div>
			<div class="row">
				<div class="large-4 large-offset-6 columns">
					<input type="submit" class="small success button" value="Absenden">
				</div>
			</div>
		</form>
		<jsp:include page="basicJSPs/footer.jsp"/>
	</body>
</html>
