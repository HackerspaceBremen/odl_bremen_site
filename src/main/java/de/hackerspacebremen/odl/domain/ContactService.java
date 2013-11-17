package de.hackerspacebremen.odl.domain;

import com.google.inject.Inject;

import de.hackerspacebremen.odl.data.ContactRequestDAO;

public class ContactService {

	@Inject
	private ContactRequestDAO contactDAO;

	/**
	 * @return the contactDAO
	 */
	public ContactRequestDAO getContactDAO() {
		return contactDAO;
	}
	
	
}
