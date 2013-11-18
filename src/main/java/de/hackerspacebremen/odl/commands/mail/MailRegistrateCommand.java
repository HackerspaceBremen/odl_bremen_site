package de.hackerspacebremen.odl.commands.mail;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Properties;
import java.util.logging.Logger;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.google.inject.Inject;

import de.hackerspacebremen.odl.commands.WebCommand;
import de.hackerspacebremen.odl.common.util.LogUtility;
import de.hackerspacebremen.odl.data.entities.RegistrateRequest;
import de.hackerspacebremen.odl.domain.RegistrateService;

public class MailRegistrateCommand extends WebCommand{

	@Inject
	private RegistrateService registrateService;
	
	@Inject
	private LogUtility logUtility;
	
	/**
     * static attribute used for logging.
     */
    private static final Logger logger = Logger.getLogger(MailRegistrateCommand.class.getName());
    
    private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm", Locale.GERMANY);
	
	public void writeEmail(){
		final Long contactID = this.params.getLong("registrateId");
		
		this.write(this.registrateService.getRegistrateDAO().findById(contactID));
	}
	
	private void write(final RegistrateRequest request){
		final Session session = Session.getDefaultInstance(new Properties(), null);
        final Message msg = new MimeMessage(session);
        try {
            msg.setFrom(new InternetAddress("hshbdeveloper@gmail.com", "ODL Bremen ADMIN")); // TODO use propertyservice for second attribute
	        msg.addRecipient(Message.RecipientType.TO,
	                         new InternetAddress("admins"));
	        msg.setSubject("Neue Geräteanfrage"); // TODO use propertyservice 
	        final StringBuilder sBuilder = new StringBuilder("Hallo Chef,\n\nes wurde eine Geräteanfrage über die Website erstellt:\n\n");
	        sBuilder.append("Wann (Anfrage erstellt):");
	        sBuilder.append(sdf.format(request.getCreated()));
	        sBuilder.append("\nWann:");
	        sBuilder.append(sdf.format(request.getDate()));
	        sBuilder.append("\nName: ");
	        sBuilder.append(request.getName());
	        sBuilder.append("\nEmail: ");
	        sBuilder.append(request.getEmail());
	        sBuilder.append("\nGerät: \"");
	        sBuilder.append(request.getDevice());
	        sBuilder.append("\nOrt: \"");
	        sBuilder.append(request.getLocation());
	        sBuilder.append("\nWeitere Informationen: \"");
	        sBuilder.append(request.getMoreInformation());
	        sBuilder.append("\"\n\nBis zum nächsten Mal Chef!\n\nDein ergiebiger Mail-Tasker");
	        msg.setText(sBuilder.toString());
	        Transport.send(msg);
        } catch (MessagingException e) {
        	logger.severe("MessagingException full stacktrace: " + this.logUtility.extractStackTraceFromThrowable(e));
        } catch (UnsupportedEncodingException e) {
        	logger.severe("UnsupportedEncodingException full stacktrace: " + this.logUtility.extractStackTraceFromThrowable(e));
        }
	}
}
