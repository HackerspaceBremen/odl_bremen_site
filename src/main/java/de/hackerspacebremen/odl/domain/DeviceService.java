package de.hackerspacebremen.odl.domain;

import com.google.inject.Inject;

import de.hackerspacebremen.odl.data.DeviceDAO;

public final class DeviceService {
	
	@Inject
	private DeviceDAO deviceDAO;

	/**
	 * @return the deviceDAO
	 */
	public DeviceDAO getDeviceDAO() {
		return deviceDAO;
	}

	
}
