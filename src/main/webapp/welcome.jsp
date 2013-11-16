<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp" />

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		
		<div class="row">
		    <div class="large-12 columns">
		      <img src="http://placehold.it/1000x400&text=[img]">
		 
		      <hr>
		    </div>
		  </div>
		  
		<div class="row">
			<div class="large-4 columns">
		      <h3>Open Device Labs</h3>
		      <p>Mit der zunehmenden Fragmentierung des Smartphone- und Tablet-Marktes wird es kostspielig alle 
		      relevanten Test-Geräte vorzuhalten. In <a href="http://opendevicelab.com/" target="_blank">Open Device Labs
		      </a> werden durch Spenden und Leihgeräte öffentliche 
		      Gerätepools aufgebaut, die jedem kostenlos zur Verfügung stehen.<br/><br/>
		      <a href="http://klick-ass.com/de/awesomeness/opendevicelab-com-a-directory-to-a-global-movement" target="_blank">
		      Mehr...</a></p>
		    </div>
		    <div class="large-4 columns">
		      <h3>Open Device Lab Bremen</h3>
		      <p>Das <strong>Open Device Lab in Bremen</strong> ist ein Projekt des <a href="http://www.hackerspace-bremen.de" 
		      target="_blank">Hackerspace Bremen e.V.</a> Das Lab wird 
		      von den Mitgliedern des gemeinnützigen Vereins betrieben.</p>
		    </div>
			<div class="large-4 columns">
		      <h3>Spende ein Gerät</h3>
		      <p>Um den Nutzern des Labs eine möglichst große Variation an Gerät zu bieten, benötigen wir 
		      möglichst viele unterschiedliche Geräte. TODO Verlinkung auf Spenden Seite?</p>
		    </div>
		
		</div>
		<div class="row">
			<div class="large-12 columns">
				<a id="devices"></a><h3>Geräteliste</h3>
				<!-- TODO Geräteliste mit Link auf Geräteseite -->
			</div>
		</div>
		<div class="row">
			<div class="large-12 columns">
				<a id="location"></a><h3 id="location">So findest du uns!</h3>
			</div>
		</div>
		<div class="row">
			<div class="large-5 columns">
				<!-- TODO Karte einbinden! -->
			</div>
			<div class="large-7 columns">
				<p>Den ODL in Bremen findest du an zwei Orten:<br/><br/>
				Am Wochenende und Werktag Abends im <a href="http://www.hackerspace-bremen.de/locations.php" target="_blank">Hackerspace Bremen</a>. 
				Und Werktags zwischen 8 und 18 Uhr im <a href="http://www.team-neusta.de/coworking" target="_blank">Coworking Bereich von team neusta</a>. 
				Damit wir die gewünschten Geräte zur Verfügung stellen können, melde dich mindestens 2 Tage vorher bei 
				uns an: <a href="/registrate">Anmeldung</a><br/><br/>
				Du kannst natürlich auch gerne spontan vorbeikommen, allerdings können wir 
				dann nicht garantieren, dass ein Ansprechpartner vor Ort ist oder dein
				gewünschtes Gerät zur Verfügung steht.</p>
				<!-- TODO Links fehlen noch! -->
			</div>
		</div>
			<!-- TODO Location:
				Links: Eingebundene Google Maps Karte
				
			 -->
		
		<div class="row">
			<div class="large-4 columns">
				<h3>Soziale Netzwerke</h3>
				<!-- TODO: soziale Netzwerke -->
			</div>
			<div class="large-4 columns">
				<h3>Weitere ODLs in Deutschland</h3>
				<!-- TODO weitere ODLs in Deutschland (siehe #2 auf github) -->
			</div>
			<div class="large-4 columns">
				<h3>Gib uns Feedback</h3>
				<!-- TODO gib uns feedback per mail; bewerte uns -->
			</div>
		</div>
		<div class="row">
			<div class="large-12 columns">
				<h3>Partner und Sponsoren</h3>
				<!-- TODO: Partner und Sponsoren -->
			</div>
		</div>
		
		
		<jsp:include page="basicJSPs/footer.jsp"/>
		<jsp:include page="basicJSPs/publisher.jsp"/>
	</body>
</html>
