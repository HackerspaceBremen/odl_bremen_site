package de.hackerspacebremen.odl.data;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;

import de.hackerspacebremen.odl.data.entities.ContactRequest;
import de.hackerspacebremen.odl.data.entities.Device;
import de.hackerspacebremen.odl.data.entities.DonationRequest;

public class OfyService {

	static {
        factory().register(Device.class);
        factory().register(DonationRequest.class);
        factory().register(ContactRequest.class);
        // more
    }

    public static Objectify ofy() {
        return ObjectifyService.ofy();
    }
    
    public static ObjectifyFactory factory() {
        return ObjectifyService.factory();
    }
}
