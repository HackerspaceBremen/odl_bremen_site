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
					<label>Gerätebezeichnung</label>
					<input type="text" placeholder="Bei mehreren Geräten bitte mit Komma trennen">
				</div>
			</div>
			<div class="row">
		      <div class="large-8 columns">
		        <label>Weitere Informationen</label>
		        <textarea placeholder="Nutze dieses Feld, um uns mitzuteilen, ob wir das Gerät abholen sollen und um uns weitere Informationen zu dem Gerät zu geben"></textarea>
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
