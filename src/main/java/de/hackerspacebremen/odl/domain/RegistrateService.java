package de.hackerspacebremen.odl.domain;

import com.google.inject.Inject;

import de.hackerspacebremen.odl.data.RegistrateRequestDAO;

public class RegistrateService {

	@Inject
	private RegistrateRequestDAO registrateDAO;

	/**
	 * @return the registrateDAO
	 */
	public RegistrateRequestDAO getRegistrateDAO() {
		return registrateDAO;
	}
	
	
}
