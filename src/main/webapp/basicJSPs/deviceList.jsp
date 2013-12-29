<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.google.inject.Injector"%>
<%@ page import="com.google.inject.Guice"%>
<%@ page import="java.util.List"%>
<%@ page import="de.hackerspacebremen.odl.commands.DeviceCommand" %>
<%@ page import="de.hackerspacebremen.odl.data.entities.Device" %>

<%
	final Injector inj = (Injector) pageContext.getServletContext().getAttribute(Injector.class.getName());
	
	final String adminParam = request.getParameter("admin");
	final boolean admin = adminParam!=null && adminParam.equals("true");
	
	final DeviceCommand cmd = inj.getInstance(DeviceCommand.class);
	final List<Device> devices;
	if(admin){
		devices = cmd.showAllDevices();
	}else{
		devices = cmd.showAllActiveDevices();
	}
%>

<%
	if(devices==null || devices.isEmpty()){
%>
		<p style="text-align:center;">Leider sind für dieses ODL noch keine Geräte hinterlegt</p>
<%		
	}else{
%>
		<table>
		  	<thead>
		    	<tr>
		      		<th>Gerät</th>
		      		<th>System</th>
		      		<th>Auflösung</th>
		      		<th>Spender</th>
		      		<th></th>
		      		<th></th>
<%
				if(admin){
%>
					<th>Bearbeiten</th>	
<%
				}
%>
		    	</tr>
		  	</thead>
		  	<tbody>
<%
			for(int i=0; i<devices.size(); i++){
				final Device device = devices.get(i);
%>
		    	<tr>
		      		<td><%=device.getDevice()%></td>
		      		<td><%=device.getSystem()%></td>
		      		<td><%=device.getResolutionX()%> x <%=device.getResolutionY()%></td>
<%
				if(device.getDonatedByURL()==null || device.getDonatedByURL().isEmpty()){
%>
					<td><%=device.getDonatedBy()%></td>
<%
				}else{
%>
		      		<td><%=device.getDonatedBy()%></td>
<%
				}
				if(device.isDonated()){
%>
					<td></td>				
<%
				}else{
%>
					<td>Leihgabe</td>
<%
				}
%>

		      		<td><a href="/device/<%=device.getId().longValue()%>">Details</a></td>
<%
				if(admin){
%>		      		
		      		<td><a href="/admin/device/edit?id=<%=device.getId().longValue()%>">TODO</a></td>
<%
				}
%>
		    	</tr>
<%
			}
%>
		  	</tbody>
		</table>

<%		
	}
%>