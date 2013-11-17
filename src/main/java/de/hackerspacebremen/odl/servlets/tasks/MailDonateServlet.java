package de.hackerspacebremen.odl.servlets.tasks;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.inject.Provider;
import com.google.inject.Inject;
import com.google.inject.Singleton;

import de.hackerspacebremen.odl.commands.mail.MailDonateCommand;

@Singleton
public class MailDonateServlet extends HttpServlet{

	/**
	 * generated serialVersionUID.
	 */
	private static final long serialVersionUID = 3697393151994629148L;
	
	@Inject
	private Provider<MailDonateCommand> mailCmdProvider;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		final MailDonateCommand cmd = mailCmdProvider.get();
		cmd.setReq(req);
		cmd.setResp(resp);
		cmd.writeEmail();
	}
}
