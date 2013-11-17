<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
	<jsp:include page="basicJSPs/head.jsp">
	  <jsp:param name="title" value="ODL Administration" />
	</jsp:include>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<div class="row">
			<div class="large-12 columns">
				<h3>Admin: Neues Gerät</h3>
			</div>
		</div>
		<form action="/admin/device/create" method="post">
			<div class="row">
				<div class="large-10 columns">
					<div class="row">
						<div class="large-8 columns">
							<label>Gerätebezeichnung</label>
							<input id="device" name="device" type="text">
						</div>
					</div>
					<div class="row">
						<div class="large-8 columns">
							<label>System</label>
							<input id="system" name="system" type="text">
						</div>
					</div>
					<div class="row">
						<div class="large-2 columns">
							<label>Auflösung-x</label>
							<input id="resolution_x" name="resolution_x" type="number">
						</div>
						<div class="large-2 columns">
							<label>Auflösung-y</label>
							<input id="resolution_y" name="resolution_y" type="number">
						</div>
						<div class="large-2 columns">
							
						</div>
					</div>
					<div class="row">
						<div class="large-4 columns">
							<label>Spender</label>
							<input id="donated_by" name="donated_by" type="text">
						</div>
						<div class="large-4 columns">
							<label>URL</label>
							<input id="donated_by_url" name="donated_by_url" type="url" placeholder="Optional">
						</div>
						<div class="large-4 columns">
						</div>
					</div>
					<div class="row">
						<div class="large-8 columns">
							<label>Detail-Link</label>
							<input id="detail_link" name="detail_link" type="url" placeholder="Optional">
						</div>
					</div>
					<div class="row">
						<div class="large-8 columns">
							<label>Weitere Informationen</label>
							<textarea id="additional_information" name="additional_information" placeholder="Optional"></textarea>
						</div>
					</div>
					<div class="row">
						<div class="large-4 large-offset-6 columns">
							<input type="submit" class="small success button" value="Absenden">
						</div>
					</div>
				</div>
				<jsp:include page="basicJSPs/adminMenue.jsp"/>
			</div>
		</form>
		
		<jsp:include page="basicJSPs/footer.jsp"/>
	</body>
</html>
