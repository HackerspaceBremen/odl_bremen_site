package de.hackerspacebremen.odl.commands;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import de.hackerspacebremen.odl.util.Parameters;



public class WebCommand {

	protected HttpServletRequest req;
	
	protected HttpServletResponse resp;
	
	protected Parameters params = null;
	
	/**
	 * @param req the req to set
	 */
	public void setReq(HttpServletRequest req) {
		this.req = req;
		this.params = new Parameters(req);
	}

	/**
	 * @param resp the resp to set
	 */
	public void setResp(HttpServletResponse resp) {
		this.resp = resp;
	}
}
