package de.hackerspacebremen.odl.modules;

import com.google.inject.servlet.ServletModule;

import de.hackerspacebremen.odl.servlets.ContactServlet;
import de.hackerspacebremen.odl.servlets.DeviceServlet;
import de.hackerspacebremen.odl.servlets.DonateServlet;
import de.hackerspacebremen.odl.servlets.HomeServlet;
import de.hackerspacebremen.odl.servlets.ImpressumServlet;
import de.hackerspacebremen.odl.servlets.RegistrateServlet;
import de.hackerspacebremen.odl.servlets.admin.AdminCreateDeviceServlet;
import de.hackerspacebremen.odl.servlets.admin.AdminDevicesServlet;
import de.hackerspacebremen.odl.servlets.admin.AdminServlet;
import de.hackerspacebremen.odl.servlets.tasks.MailContactServlet;
import de.hackerspacebremen.odl.servlets.tasks.MailDonateServlet;


public class ServletsModule extends ServletModule {

	@Override
	protected void configureServlets() {
		serve("/device").with(DeviceServlet.class);
		serve("/impressum").with(ImpressumServlet.class);
		serve("/").with(HomeServlet.class);
		serve("/donate").with(DonateServlet.class);
		serve("/contact").with(ContactServlet.class);
		serve("/registrate").with(RegistrateServlet.class);
		
		// admin jsps
		serve("/admin").with(AdminServlet.class);
		serve("/admin/devices").with(AdminDevicesServlet.class);
		serve("/admin/device/create").with(AdminCreateDeviceServlet.class);
		
		// tasks
		serve("/task/mail/donate").with(MailDonateServlet.class);
		serve("/task/mail/contact").with(MailContactServlet.class);
// TODO		serve("/task/mail/registrate").with(MailRegistrateServlet.class);
	}
}

