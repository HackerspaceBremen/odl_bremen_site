package de.hackerspacebremen.odl.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.inject.Inject;
import com.google.inject.Provider;
import com.google.inject.Singleton;

import de.hackerspacebremen.odl.commands.RegistrateCommand;

@Singleton
public final class RegistrateServlet extends HttpServlet {

	/**
	 * generated serialVersionUID.
	 */
	private static final long serialVersionUID = -2849087089582120310L;
	
	@Inject
	private Provider<RegistrateCommand> registrateCmdProvider;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/registrate.jsp").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		final RegistrateCommand registrateCmd = registrateCmdProvider.get();
		registrateCmd.setReq(req);
		registrateCmd.setResp(resp);
		registrateCmd.saveRegistrate();
	}
}
