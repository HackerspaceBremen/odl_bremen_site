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
			<div class="large-10 columns">
			<p>Mit diesem Formular hast du die Möglichkeit das ODL-Bremen-Team zu kontaktieren. 
			Wir freuen uns besonders über Feedback zu unserem Angebot, unserer Website oder unseren 
			Präsenzen auf sozialen Netzwerken.</p>
			</div>
		</div>
		<form action="/contact" onsubmit="return validateContactForm();" method="post">
			<div class="row">
				<div class="large-8 columns">
					<label>Vollständiger Name</label>
					<input id="full_name" name="full_name" type="text">
					<small id="full_name_error" hidden>Bitte vollständigen Namen eintragen!</small>
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<label>E-Mail</label>
					<input id="email" name="email" type="email">
					<small id="email_error" hidden>Bitte eine E-Mail Adresse eintragen!</small>
				</div>
			</div>
			<div class="row">
		      <div class="large-8 columns">
		        <label>Dein Text</label>
		        <textarea id="contact_text" name="contact_text" placeholder="Schreibe hier dein Anliegen/Feedback nieder"></textarea>
		        <small id="contact_text_error" hidden>Bitte trage hier dein Anliegen/Feedback ein!</small>
		      </div>
		    </div>
			<div class="row">
				<div class="large-4 large-offset-6 columns">
					<input type="submit" class="small success button" value="Absenden">
				</div>
			</div>
		</form>
		<jsp:include page="basicJSPs/footer.jsp"/>
		<script src="/js/contactValidation.js"></script>
	</body>
</html>
