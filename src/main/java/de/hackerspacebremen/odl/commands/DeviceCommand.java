package de.hackerspacebremen.odl.commands;

import java.util.Date;
import java.util.List;

import com.google.inject.Inject;

import de.hackerspacebremen.odl.data.entities.Device;
import de.hackerspacebremen.odl.domain.DeviceService;

public class DeviceCommand extends WebCommand{
	
	@Inject
	private DeviceService deviceService;

	public List<Device> showAllActiveDevices(){
		return this.deviceService.getDeviceDAO().findAvailable(true);
	}
	
	public List<Device> showAllDevices(){
		return this.deviceService.getDeviceDAO().findAll();
	}
	
	public Device findById(final Long deviceId){
		return this.deviceService.getDeviceDAO().findById(deviceId);
	}
	
	public void createDevice(){
		final Device newDevice = this.newDeviceFromParameters();
		this.deviceService.getDeviceDAO().persist(newDevice);
	}
	
	private Device newDeviceFromParameters(){
		final Device newDevice = new Device();
		newDevice.setDevice(this.params.get("device"));
		newDevice.setSystem(this.params.get("system"));
		newDevice.setResolutionX(this.params.getint("resolution_x"));
		newDevice.setResolutionY(this.params.getint("resolution_y"));
		newDevice.setDonatedBy(this.params.get("donated_by"));
		newDevice.setDonatedByURL(this.params.get("donated_by_url"));
		newDevice.setDetailLink(this.params.get("detail_link"));
		newDevice.setMoreInformation(this.params.get("additional_information"));
		newDevice.setAvailable(true);
		newDevice.setCreated(new Date());
		newDevice.setDonated(this.params.getCheckboolean("donated"));
		return newDevice;
	}
	
}
