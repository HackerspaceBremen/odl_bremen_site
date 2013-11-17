package de.hackerspacebremen.odl.commands;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;

import com.google.appengine.api.taskqueue.Queue;
import com.google.appengine.api.taskqueue.QueueFactory;
import com.google.appengine.api.taskqueue.TaskOptions;
import com.google.appengine.api.taskqueue.TaskOptions.Method;
import com.google.inject.Inject;

import de.hackerspacebremen.odl.data.entities.ContactRequest;
import de.hackerspacebremen.odl.domain.ContactService;

public class ContactCommand extends WebCommand{

	 @Inject
	 private ContactService contactService;
	 
	 public void saveContact() throws IOException, ServletException{
		final ContactRequest contact = 
				contactService.getContactDAO().persist(this.newContactFromParameters());
		 
		 final Queue queue = QueueFactory.getDefaultQueue();
		 TaskOptions taskOpt = TaskOptions.Builder
				.withUrl("/task/mail/contact");
		 taskOpt.method(Method.POST);
		 taskOpt.param("contactId",
				String.valueOf(contact.getId().longValue()));
		 queue.add(taskOpt);
		 
		 final String url = "/contactSuccess.jsp?contactId="+contact.getId().longValue();
		 req.getRequestDispatcher(url).forward(req, resp);
	 }
	 
	 private ContactRequest newContactFromParameters(){
		 final ContactRequest contactRequest = new ContactRequest();
		 contactRequest.setCreated(new Date());
		 contactRequest.setContactText(this.params.get("contact_text"));
		 contactRequest.setEmail(this.params.get("email"));
		 contactRequest.setName(this.params.get("full_name"));
		 return contactRequest;
	 }
}
