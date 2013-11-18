package de.hackerspacebremen.odl.data;

import static de.hackerspacebremen.odl.data.OfyService.ofy;

import com.googlecode.objectify.Key;

import de.hackerspacebremen.odl.data.entities.RegistrateRequest;

public class RegistrateRequestDAO {

	public RegistrateRequest persist(final RegistrateRequest registrate){
		final Key<RegistrateRequest> keyStatus = ofy().save().entity(registrate).now();
		return ofy().load().key(keyStatus).now();
	}
	
	public RegistrateRequest findById(final Long id){
		return ofy().load().type(RegistrateRequest.class).id(id).now();
	}
}
