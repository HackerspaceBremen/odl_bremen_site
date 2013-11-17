package de.hackerspacebremen.odl.commands;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;

import com.google.appengine.api.taskqueue.Queue;
import com.google.appengine.api.taskqueue.QueueFactory;
import com.google.appengine.api.taskqueue.TaskOptions;
import com.google.appengine.api.taskqueue.TaskOptions.Method;
import com.google.inject.Inject;

import de.hackerspacebremen.odl.data.entities.DonationRequest;
import de.hackerspacebremen.odl.domain.DonationService;

public class DonationCommand extends WebCommand{

	 @Inject
	 private DonationService donationService;
	 
	 public void saveDonation() throws IOException, ServletException{
		final DonationRequest donation = 
				 donationService.getDonationDAO().persist(this.newDonationFromParameters());
		 
		 final Queue queue = QueueFactory.getDefaultQueue();
		 TaskOptions taskOpt = TaskOptions.Builder
				.withUrl("/task/mail/donate");
		 taskOpt.method(Method.POST);
		 taskOpt.param("donationId",
				String.valueOf(donation.getId().longValue()));
		 queue.add(taskOpt);
		 
		 final String url = "/donateSuccess.jsp?donationId="+donation.getId().longValue();
		 req.getRequestDispatcher(url).forward(req, resp);
	 }
	 
	 private DonationRequest newDonationFromParameters(){
		 final DonationRequest donationRequest = new DonationRequest();
		 donationRequest.setCreated(new Date());
		 donationRequest.setDevice(this.params.get("device"));
		 donationRequest.setEmail(this.params.get("email"));
		 donationRequest.setMoreInformation(this.params.get("more_information"));
		 donationRequest.setName(this.params.get("full_name"));
		 return donationRequest;
	 }
}
