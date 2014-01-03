<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.util.Locale"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat" %>

<%
	final Calendar cal = Calendar.getInstance(Locale.GERMANY);
	cal.setTime(new Date());
	cal.add(Calendar.DAY_OF_YEAR, 2);
	final String minDate = new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
%>

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
			<div class="large-10 columns">
			<p>
			Wenn du ein Gerät aus dem Open Device Lab nutzen möchtest, kannst du dich bis zu zwei Tage 
			vorher bei uns mit Hilfe dieses Formulars anmelden. Die Nutzung des Gerätes ist nur an
			den vorgegebenen Orten möglich.<br/>
			Bedenke, dass wir nicht jeden Anmeldungswunsch erfüllen können, da wir den ODL gemeinnützig
			und mit begrenzten Ressourcen betreiben.
			</p>
			</div>
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
					<input id="date" name="date" type="date" min="<%=minDate%>">
					<small id="date_error" hidden>Bitte gebe ein Datum mit mindestens 2 Tage in der Zukunft ein!</small>
				</div>
				<div class="large-4 columns">
					<label>Zeit</label>
					<input id="time" name="time" type="time">
					<small id="time_error" hidden>Bitte gebe eine Zeit zwischen 8 und 20 Uhr ein!</small> 
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
