package de.hackerspacebremen.odl.data;

import static de.hackerspacebremen.odl.data.OfyService.ofy;

import java.util.List;

import com.googlecode.objectify.Key;

import de.hackerspacebremen.odl.data.entities.Device;


public final class DeviceDAO {

	public Device persist(final Device device){
		final Key<Device> keyStatus = ofy().save().entity(device).now();
		return ofy().load().key(keyStatus).now();
	}
	
	public List<Device> findAll(){
		return ofy().load().type(Device.class).list();
	}
	
	public List<Device> findAvailable(final boolean available){
		return ofy().load().type(Device.class).filter("available", available).list();
	}
	
	public Device findById(final Long id){
		return ofy().load().type(Device.class).id(id).now();
	}
}
