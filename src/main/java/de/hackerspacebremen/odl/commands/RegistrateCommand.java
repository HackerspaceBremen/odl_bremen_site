package de.hackerspacebremen.odl.commands;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;

import com.google.appengine.api.taskqueue.Queue;
import com.google.appengine.api.taskqueue.QueueFactory;
import com.google.appengine.api.taskqueue.TaskOptions;
import com.google.appengine.api.taskqueue.TaskOptions.Method;
import com.google.inject.Inject;

import de.hackerspacebremen.odl.data.entities.RegistrateRequest;
import de.hackerspacebremen.odl.domain.RegistrateService;

public class RegistrateCommand extends WebCommand{

	 @Inject
	 private RegistrateService registrateService;
	 
	 public void saveRegistrate() throws IOException, ServletException{
		final RegistrateRequest registrate = 
				registrateService.getRegistrateDAO().persist(this.newRegistrateFromParameters());
		 
		 final Queue queue = QueueFactory.getDefaultQueue();
		 TaskOptions taskOpt = TaskOptions.Builder
				.withUrl("/task/mail/registrate");
		 taskOpt.method(Method.POST);
		 taskOpt.param("registrateId",
				String.valueOf(registrate.getId().longValue()));
		 queue.add(taskOpt);
		 
		 final String url = "/registrateSuccess.jsp?registrateId="+registrate.getId().longValue();
		 req.getRequestDispatcher(url).forward(req, resp);
	 }
	 
	 private RegistrateRequest newRegistrateFromParameters(){
		 final RegistrateRequest registrate = new RegistrateRequest();
		 registrate.setCreated(new Date());
		 registrate.setDate(this.params.getDate("date", "time"));
		 registrate.setDevice(this.params.get("device"));
		 registrate.setEmail(this.params.get("email"));
		 registrate.setName(this.params.get("full_name"));
		 registrate.setMoreInformation(this.params.get("more_information"));
		 registrate.setLocation(this.params.get("locationDropdown"));
		 return registrate;
	 }
}
