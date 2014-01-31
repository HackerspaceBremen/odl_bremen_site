<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp">
		<jsp:param name="home" value="true"/>
	</jsp:include>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		
		<div class="row">
		    <div class="large-12 columns">
			  <img style="width:100%;" src="/images/title_icon_2.png">
		      <hr>
		    </div>
		  </div>
		  
		<div class="row">
			<div class="large-4 columns">
		      <h3 style="text-align:center;">Open Device Labs</h3>
		      <p style="text-align:center;">Mit der zunehmenden Fragmentierung des Smartphone- und Tablet-Marktes wird es kostspielig, alle 
		      relevanten Test-Geräte vorzuhalten. In <a href="http://opendevicelab.com/" target="_blank">Open Device Labs
		      </a> werden durch Spenden und Leihgeräte öffentliche 
		      Gerätepools aufgebaut, die jedem kostenlos zur Verfügung stehen.<br/>
		      <a href="http://klick-ass.com/de/awesomeness/opendevicelab-com-a-directory-to-a-global-movement" target="_blank">
		      Mehr...</a></p>
		    </div>
		    <div class="large-4 columns">
		      <h3 style="text-align:center;">Open Device Lab Bremen</h3>
		      <p style="text-align:center;">Das <strong>Open Device Lab in Bremen</strong> ist ein Projekt des <a href="http://www.hackerspace-bremen.de" 
		      target="_blank">Hackerspace Bremen e.V.</a> Das Lab wird 
		      von den Mitgliedern des gemeinnützigen Vereins betrieben.<br/>An den Orten des Labs kannst du deine App oder deine Website 
		      an den <a href="/#devices">Geräten des Labs</a> ausprobieren. <a href="/registrate">Melde dich dafür einfach bei uns an.</a></p>
		    </div>
			<div class="large-4 columns">
		      <h3 style="text-align:center;">Spende ein Gerät</h3>
		      <p style="text-align:center;">Um den Nutzern des Labs eine möglichst große Variation an Geräten zu bieten, benötigen wir 
		      möglichst viele unterschiedliche Geräte. Wenn du ein Gerät spenden oder als Leihgabe zur Verfügung stellen möchtest, dann 
		      nutze unser <a href="/donate">Spendenformular</a>.</p>
		    </div>
		</div>
		<jsp:include page="basicJSPs/seperator.jsp"/>
		<div class="row">
			<div class="large-12 columns" style="text-align:center;">
				<a id="devices"></a><h3>Geräteliste</h3>
			</div>
		</div>
		<div class="row">
			<div class="large-10 large-centered columns">
				<jsp:include page="basicJSPs/deviceList.jsp"/>
			</div>
			<div class="large-6 large-centered columns">
				<p style="text-align: center;">Es ist möglich <a href="/devices/enough">weitere Geräte von enough software</a> über das ODL auszuleihen.</p>
			</div>
		</div>
		<jsp:include page="basicJSPs/seperator.jsp"/>
		<div class="row">
			<div class="large-12 columns" style="text-align:center;">
				<a id="location"></a><h3 id="location">So findest du uns!</h3>
			</div>
		</div>
		<div class="row">
			<div class="large-7 columns" id="map-canvas">
				<!-- map -->
			</div>
			<div class="large-5 columns">
				<p>Das ODL in Bremen findest du an zwei Orten:<br/><br/>
				Am Wochenende und werktags abends im <a href="http://www.hackerspace-bremen.de/anfahrt" target="_blank">Hackerspace Bremen</a>. 
				Und Werktags zwischen 8 und 18 Uhr im <a href="http://www.coworking-neusta.de/" target="_blank">Coworking Bereich von team neusta</a>. 
				Damit wir die gewünschten Geräte zur Verfügung stellen können, <a href="/registrate">melde dich mindestens 2 Tage vorher bei 
				uns an</a><br/><br/>
				Du kannst natürlich auch gerne spontan vorbeikommen, allerdings können wir 
				dann nicht garantieren, dass ein Ansprechpartner vor Ort ist oder dein
				gewünschtes Gerät zur Verfügung steht.</p>
			</div>
		</div>
		<jsp:include page="basicJSPs/seperator.jsp"/>
		<div class="row">
			<div class="large-4 columns">
				<h3 style="text-align:center;">Soziale Netzwerke</h3>
				<p style="text-align:center;">
				<a href="https://www.facebook.com/ODLBremen" target="_blank">Facebook</a><br/>
				<a href="https://plus.google.com/104242465309447182051" target="_blank">Google+</a><br/>
				<a href="https://twitter.com/ODLBremen" target="_blank">Twitter</a><br/>
				<a href="https://alpha.app.net/ODLBremen" target="_blank">App.net</a><br/>
				</p>
			</div>
			<div class="large-4 columns">
				<!-- <h3>Weitere ODLs in Deutschland</h3>  -->
				<!-- TODO weitere ODLs in Deutschland (siehe #2 auf github) -->
			</div>
			<div class="large-4 columns">
				<h3 style="text-align:center;">Gib uns Feedback</h3>
				<p style="text-align:center;">Wir würden uns über ein <a href="/contact">Feedback von dir zu dieser Website oder 
				zu unserem Angebot freuen</a></p>
				<!-- TODO bewerte uns auf opendevicelab.org -->
			</div>
		</div>
		<jsp:include page="basicJSPs/seperator.jsp"/>
		<div class="row">
			<div class="large-12 columns" style="text-align:center;">
				<h3>Partner und Sponsoren</h3>
			</div>
		</div>
		<div class="row">
			<ul class="large-block-grid-4">
			  <li><a href="http://www.hackerspace-bremen.de/" target="_blank"><img src="/images/HSpace_HB_Logo_2.png" alt="Hackerspace Bremen e.V."></a></li>
			  <li><a href="http://www.coworking-neusta.de/" target="_blank"><img src="/images/logo_coworking_2.png" alt="team neusta co.working"></a></li>
			  <li><a href="http://neusta-ms.de/" target="_blank"><img src="/images/logo_neusta_ms_2.png" alt="neusta mobile solutions"></a></li>
			  <li><a href="http://www.enough.de/" target="_blank"><img src="/images/logo_enough_2.png" alt="enough software"></a></li>
			</ul>
		</div>
		
		<jsp:include page="basicJSPs/footer.jsp"/>
		<jsp:include page="basicJSPs/publisher.jsp"/>
	</body>
</html>
