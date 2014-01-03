<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.google.inject.Injector"%>
<%@ page import="com.google.inject.Guice"%>
<%@ page import="de.hackerspacebremen.odl.commands.DeviceCommand" %>
<%@ page import="de.hackerspacebremen.odl.data.entities.Device" %>

<%
	final Injector inj = (Injector) pageContext.getServletContext().getAttribute(Injector.class.getName());
	final DeviceCommand cmd = inj.getInstance(DeviceCommand.class);
	
	Device device;
	try{
		final Long deviceId = Long.valueOf(request.getParameter("deviceId"));
		device = cmd.findById(deviceId);
	}catch(NumberFormatException e){
		device = null;
	}
%>

<html>
	<jsp:include page="basicJSPs/head.jsp"/>

	<body>
		<jsp:include page="basicJSPs/nav.jsp"/>
		<%
		if(device==null){
		%>
			<div class="row">
				<div class="large-12 columns">
					<h3>Kein passendes Gerät gefunden</h3>
				</div>
			</div>
		<%
		}else{
		%>
			<div class="row">
				<div class="large-12 columns">
					<h3><%=device.getDevice()%></h3>
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<p>Zur Verfügung gestellt von <a href="<%=device.getDonatedByURL()%>" target="_blank"><%=device.getDonatedBy()%></a>
					<%
					if(device.isDonated()){
					%>
					als <strong>Spende</strong>.
					<%
					}else{
					%>
					als <strong>Leihgabe</strong>.
					<%
					}
					%>
					</p>
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<p><strong>Betriebssystem:</strong> <%=device.getSystem()%></p>
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<%
					if(device.getResolutionX()!=-1 && device.getResolutionY()!=-1){
					%>
					<p><strong>Auflösung:</strong> <%=device.getResolutionX()%> x <%=device.getResolutionY()%></p>
					<%
					}
					%>
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<p><strong>Weitere Informationen:</strong> <%=device.getMoreInformation()%></p>
				</div>
			</div>
			<div class="row">
				<div class="large-8 columns">
					<p>Noch detailliertere Informationen zum Gerät finden sich <a href="<%=device.getDetailLink()%>" target="_blank">im Vereinsarchiv des Hackerspace Bremen</a>.</p>
				</div>
			</div>
		<%
		}
		%>
		<jsp:include page="basicJSPs/footer.jsp"/>
	</body>
</html>
