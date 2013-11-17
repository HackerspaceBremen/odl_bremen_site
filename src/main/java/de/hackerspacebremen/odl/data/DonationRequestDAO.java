package de.hackerspacebremen.odl.data;

import static de.hackerspacebremen.odl.data.OfyService.ofy;

import com.googlecode.objectify.Key;

import de.hackerspacebremen.odl.data.entities.DonationRequest;

public class DonationRequestDAO {

	public DonationRequest persist(final DonationRequest donation){
		final Key<DonationRequest> keyStatus = ofy().save().entity(donation).now();
		return ofy().load().key(keyStatus).now();
	}
	
	public DonationRequest findById(final Long id){
		return ofy().load().type(DonationRequest.class).id(id).now();
	}
}
