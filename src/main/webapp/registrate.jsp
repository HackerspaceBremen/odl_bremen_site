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
				<div class="large-4 columns">
					<label>Datum</label>
					<input type="date">
				</div>
				<div class="large-4 columns">
					<label>Zeit</label>
					<input type="time">
				</div>
				<div class="large-4 columns">
					
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<label for="locationDropdown">Ort</label>
				    <select id="locationDropdown" class="large">
				        <!-- <option DISABLED>This is a dropdown</option> -->
				        <option>Hackerspace Bremen, Bornstr. 14/15</option>
				        <option>Coworking team neusta, Konsul-Smidt-Str. 24</option>
				    </select>
			    </div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<label>Geräte</label>
					<input type="text" placeholder="Bei mehreren Geräten bitte mit Komma trennen">
				</div>
			</div>
			<div class="row">
		      <div class="large-8 columns">
		        <label>Weitere Informationen</label>
		        <textarea placeholder="Nutze dieses Feld, um uns noch weitere Informationen mitzuteilen"></textarea>
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
