package de.hackerspacebremen.odl.domain;

import com.google.inject.Inject;

import de.hackerspacebremen.odl.data.DonationRequestDAO;

public class DonationService {

	@Inject
	private DonationRequestDAO donationDAO;

	/**
	 * @return the donationDAO
	 */
	public DonationRequestDAO getDonationDAO() {
		return donationDAO;
	}
	
	
}
