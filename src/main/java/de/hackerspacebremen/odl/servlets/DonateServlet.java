package de.hackerspacebremen.odl.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.inject.Inject;
import com.google.inject.Provider;
import com.google.inject.Singleton;

import de.hackerspacebremen.odl.commands.DonationCommand;

@Singleton
public final class DonateServlet extends HttpServlet {

	/**
	 * generated serialVersionUID.
	 */
	private static final long serialVersionUID = -2685071851342465814L;
	
	@Inject
	private Provider<DonationCommand> donationCmdProvider;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/donate.jsp").forward(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		final DonationCommand donationCmd = donationCmdProvider.get();
		donationCmd.setReq(req);
		donationCmd.setResp(resp);
		donationCmd.saveDonation();
	}
}
