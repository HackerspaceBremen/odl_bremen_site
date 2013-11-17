<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp"/>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<div class="row">
			<div class="large-12 columns">
				<h3>Gerätspende</h3>
			</div>
		</div>
		<div class="row">
			<!-- TODO Erklärung: Hier auch sagen, dass wir nicht jedes Gerät annehmen können 
			
			Möglichst Internetfähig -->	
		</div>
		<form action="/donate" onsubmit="return validateDonateForm();" method="post">
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
					<small id="email_error" hidden>Bitte eine E-Mail Adresse eintragen</small>
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<label>Gerätebezeichnung</label>
					<input id="device" name="device" type="text" placeholder="Bei mehreren Geräten bitte mit Komma trennen">
					<small id="device_error" hidden>Bitte die Gerätebezeichnung eintragen</small>
				</div>
			</div>
			<div class="row">
		      <div class="large-8 columns">
		        <label>Weitere Informationen</label>
		        <textarea id="more_information" name="more_information" placeholder="Nutze dieses Feld, um uns mitzuteilen, ob wir das Gerät abholen sollen und um uns weitere Informationen zu dem Gerät zu geben"></textarea>
		      </div>
		    </div>
			<div class="row">
				<div class="large-4 large-offset-6 columns">
					<input type="submit" class="small success button" value="Absenden">
				</div>
			</div>
		</form>
		<jsp:include page="basicJSPs/footer.jsp"/>
		<script src="/js/donateValidation.js"></script>
	</body>
</html>
