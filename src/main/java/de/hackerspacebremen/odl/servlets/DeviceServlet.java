package de.hackerspacebremen.odl.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.inject.Singleton;

@Singleton
public final class DeviceServlet extends HttpServlet{

	/**
	 * generated serialVersionUID.
	 */
	private static final long serialVersionUID = -7180142209791290111L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		final String deviceId = req.getRequestURI().replace("/device/", "");
		
		req.getRequestDispatcher("/device.jsp?deviceId="+deviceId).forward(req,resp);
	}

}
