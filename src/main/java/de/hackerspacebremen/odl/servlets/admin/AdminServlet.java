package de.hackerspacebremen.odl.servlets.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.inject.Singleton;

@Singleton
public final class AdminServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2470955044840234675L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("/admin.jsp").forward(req,resp);
	}
}
