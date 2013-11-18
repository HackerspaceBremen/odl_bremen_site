<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp"/>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<div class="row">
			<div class="large-12 columns">
				<h3>Anmeldung</h3>
			</div>
		</div>
		<div class="row">
			<!-- TODO Erklärung! -->	
		</div>
		<form action="/registrate" method="post" onsubmit="return validateRegistrateForm();">
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
					<small id="email_error" hidden="hidden">Bitte eine E-Mail Adresse eintragen!</small>
				</div>
			</div>
			<div class="row">
				<div class="large-4 columns">
					<label>Datum</label>
					<input id="date" name="date" type="date">
					<small id="date_error" hidden>Bitte gebe ein Datum mit mindestens 2 Tage in der Zukunft ein.</small>
				</div>
				<div class="large-4 columns">
					<label>Zeit</label>
					<input id="time" name="time" type="time">
					<small id="time_error" hidden>???</small><!-- TODO: hier unterschiedliche texte --> 
				</div>
				<div class="large-4 columns">
					
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<label for="locationDropdown">Ort</label>
				    <select id="locationDropdown" name="locationDropdown" class="large">
				        <!-- <option DISABLED>This is a dropdown</option> -->
				        <option>Hackerspace Bremen, Bornstr. 14/15</option>
				        <option>Coworking team neusta, Konsul-Smidt-Str. 24</option>
				    </select>
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<label>Geräte</label>
					<input id="device" name="device" type="text" placeholder="Bei mehreren Geräten bitte mit Komma trennen">
					<small id="device_error" hidden>Bitte trage hier mindestens ein Gerät ein!</small>
				</div>
			</div>
			<div class="row">
		      <div class="large-8 columns">
		        <label>Weitere Informationen</label>
		        <textarea id="more_information" name="more_information" placeholder="Nutze dieses Feld, um uns noch weitere Informationen mitzuteilen"></textarea>
		      </div>
		    </div>
			<div class="row">
				<div class="large-4 large-offset-6 columns">
					<input type="submit" class="small success button" value="Absenden">
				</div>
			</div>
		</form>
		<jsp:include page="basicJSPs/footer.jsp"/>
		<script src="/js/registrateValidation.js"></script>
	</body>
</html>
