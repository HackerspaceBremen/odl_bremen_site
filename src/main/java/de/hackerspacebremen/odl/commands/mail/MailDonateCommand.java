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
import de.hackerspacebremen.odl.data.entities.DonationRequest;
import de.hackerspacebremen.odl.domain.DonationService;

public class MailDonateCommand extends WebCommand{

	@Inject
	private DonationService donationService;
	
	@Inject
	private LogUtility logUtility;
	
	/**
     * static attribute used for logging.
     */
    private static final Logger logger = Logger.getLogger(MailDonateCommand.class.getName());
    
    private final SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm", Locale.GERMANY);
	
	public void writeEmail(){
		final Long donationId = this.params.getLong("donationId");
		
		this.write(this.donationService.getDonationDAO().findById(donationId));
	}
	
	private void write(final DonationRequest request){
		final Session session = Session.getDefaultInstance(new Properties(), null);
        final Message msg = new MimeMessage(session);
        try {
            msg.setFrom(new InternetAddress("hshbdeveloper@gmail.com", "ODL Bremen ADMIN")); // TODO use propertyservice for second attribute
	        msg.addRecipient(Message.RecipientType.TO,
	                         new InternetAddress("admins"));
	        msg.setSubject("Neue Gerätespende"); // TODO use propertyservice 
	        final StringBuilder sBuilder = new StringBuilder("Hallo Chef,\n\nes wurde eine Gerätespende über die Website angeboten:\n\n");
	        sBuilder.append("Wann:");
	        sBuilder.append(sdf.format(request.getCreated()));
	        sBuilder.append("\nName: ");
	        sBuilder.append(request.getName());
	        sBuilder.append("\nEmail: ");
	        sBuilder.append(request.getEmail());
	        sBuilder.append("\nGerätebezeichnung: ");
	        sBuilder.append(request.getDevice());
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
