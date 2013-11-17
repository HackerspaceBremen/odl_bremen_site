package de.hackerspacebremen.odl.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.inject.Inject;
import com.google.inject.Provider;
import com.google.inject.Singleton;

import de.hackerspacebremen.odl.commands.ContactCommand;

@Singleton
public final class ContactServlet extends HttpServlet {

	/**
	 * generated serialVersionUID.
	 */
	private static final long serialVersionUID = -2685071851342465814L;
	
	@Inject
	private Provider<ContactCommand> contactCmdProvider;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/contact.jsp").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		final ContactCommand donationCmd = contactCmdProvider.get();
		donationCmd.setReq(req);
		donationCmd.setResp(resp);
		donationCmd.saveContact();
	}
}
