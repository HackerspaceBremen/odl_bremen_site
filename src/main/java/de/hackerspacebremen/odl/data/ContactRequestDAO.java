package de.hackerspacebremen.odl.data;

import static de.hackerspacebremen.odl.data.OfyService.ofy;

import com.googlecode.objectify.Key;

import de.hackerspacebremen.odl.data.entities.ContactRequest;

public class ContactRequestDAO {

	public ContactRequest persist(final ContactRequest donation){
		final Key<ContactRequest> keyStatus = ofy().save().entity(donation).now();
		return ofy().load().key(keyStatus).now();
	}
	
	public ContactRequest findById(final Long id){
		return ofy().load().type(ContactRequest.class).id(id).now();
	}
}
