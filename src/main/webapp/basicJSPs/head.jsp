<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta charset="utf-8" />
  	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
	<link rel="icon" href="/favicon.ico" type="image/x-icon">
    
    <%
		if(request.getParameter("title")!=null){
	%>
    		<title><%=request.getParameter("title")%></title>
    <%
		}else{
    %>
    		<title>ODL Bremen</title>
    <%
		}
    %>
    <%
    	final String home = request.getParameter("home");
		if(home!=null && home.equals("true")){
	%>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
		<style type="text/css">
	      #map-canvas { height: 60%; }
	    </style>
		<script type="text/javascript"
	      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC2Ic04lQVJAvazCejwVgjXZSC4zT6OEU8&sensor=false&language=de">
	    </script>
	    <script type="text/javascript">
	      function initialize() {
	        var mapOptions = {
	          center: new google.maps.LatLng(53.08192519285795, 8.80577363928684),
	          zoom: 12,
	          mapTypeId: google.maps.MapTypeId.ROADMAP
	        };
	        var map = new google.maps.Map(document.getElementById("map-canvas"),
	            mapOptions);
	        
	        var markerHshb = new google.maps.Marker({
	            position: new google.maps.LatLng(53.08192519285795, 8.80577363928684),
	            map: map,
	            title:"Hackerspace Bremen e.V."
	        });
	        var markerNeusta = new google.maps.Marker({
	            position: new google.maps.LatLng(53.09093096584641,8.77390899618987),
	            map: map,
	            title:"co.working team neusta"
	        });
	      }
	      google.maps.event.addDomListener(window, 'load', initialize);
	    </script>
	<%
		}else{
	%>
		<meta name="viewport" content="width=device-width" />
	<%
		}
	%>
    <link rel="stylesheet" href="/theme/css/foundation.css">
    <script src="/js/vendor/custom.modernizr.js"></script>
</head>