package de.hackerspacebremen.odl.servlets.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.inject.Inject;
import com.google.inject.Provider;
import com.google.inject.Singleton;

import de.hackerspacebremen.odl.commands.DeviceCommand;

@Singleton
public final class AdminCreateDeviceServlet extends HttpServlet {

	/**
	 * generated serialVersioUID.
	 */
	private static final long serialVersionUID = 2470955044840234675L;

	@Inject
	private Provider<DeviceCommand> deviceCmdProvider;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/adminCreateDevice.jsp").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		final DeviceCommand cmd = deviceCmdProvider.get();
		cmd.setReq(req);
		cmd.setResp(resp);
		cmd.createDevice();
	}
}
