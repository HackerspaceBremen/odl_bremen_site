package de.hackerspacebremen.odl.data.entities;

import java.util.Date;

import com.googlecode.objectify.annotation.Cache;
import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
import com.googlecode.objectify.annotation.Index;

@Cache
@Entity
public class Device {

	@Id
	private Long id;
	
	@Index
	private Date created;
	
	@Index
	private String device;
	
	@Index
	private String system;
	
	private boolean donated;
	
	private int resolutionX;
	
	private int resolutionY;
	
	private String donatedBy;
	
	private String donatedByURL;
	
	private String detailLink;
	
	private String moreInformation;
	
	/**
	 * this field can be used in case a device 
	 * will be given back to its owner.
	 */
	@Index
	private boolean available;

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the created
	 */
	public Date getCreated() {
		return created;
	}

	/**
	 * @param created the created to set
	 */
	public void setCreated(Date created) {
		this.created = created;
	}

	/**
	 * @return the device
	 */
	public String getDevice() {
		return device;
	}

	/**
	 * @param device the device to set
	 */
	public void setDevice(String device) {
		this.device = device;
	}

	/**
	 * @return the system
	 */
	public String getSystem() {
		return system;
	}

	/**
	 * @param system the system to set
	 */
	public void setSystem(String system) {
		this.system = system;
	}

	/**
	 * @return the resolutionX
	 */
	public int getResolutionX() {
		return resolutionX;
	}

	/**
	 * @param resolutionX the resolutionX to set
	 */
	public void setResolutionX(int resolutionX) {
		this.resolutionX = resolutionX;
	}

	/**
	 * @return the resolutionY
	 */
	public int getResolutionY() {
		return resolutionY;
	}

	/**
	 * @param resolutionY the resolutionY to set
	 */
	public void setResolutionY(int resolutionY) {
		this.resolutionY = resolutionY;
	}

	/**
	 * @return the donatedBy
	 */
	public String getDonatedBy() {
		return donatedBy;
	}

	/**
	 * @param donatedBy the donatedBy to set
	 */
	public void setDonatedBy(String donatedBy) {
		this.donatedBy = donatedBy;
	}

	/**
	 * @return the donatedByEmail
	 */
	public String getDonatedByURL() {
		return donatedByURL;
	}

	/**
	 * @param donatedByURL the donatedByURL to set
	 */
	public void setDonatedByURL(String donatedByURL) {
		this.donatedByURL = donatedByURL;
	}

	/**
	 * @return the detailLink
	 */
	public String getDetailLink() {
		return detailLink;
	}

	/**
	 * @param detailLink the detailLink to set
	 */
	public void setDetailLink(String detailLink) {
		this.detailLink = detailLink;
	}

	/**
	 * @return the moreInformation
	 */
	public String getMoreInformation() {
		return moreInformation;
	}

	/**
	 * @param moreInformation the moreInformation to set
	 */
	public void setMoreInformation(String moreInformation) {
		this.moreInformation = moreInformation;
	}

	/**
	 * @return the available
	 */
	public boolean isAvailable() {
		return available;
	}

	/**
	 * @param available the available to set
	 */
	public void setAvailable(boolean available) {
		this.available = available;
	}

	/**
	 * @return the donated
	 */
	public boolean isDonated() {
		return donated;
	}

	/**
	 * @param donated the donated to set
	 */
	public void setDonated(boolean donated) {
		this.donated = donated;
	}
}
