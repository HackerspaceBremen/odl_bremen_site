package de.hackerspacebremen.odl.modules;

import com.google.inject.servlet.ServletModule;

import de.hackerspacebremen.odl.AdminServlet;
import de.hackerspacebremen.odl.DeviceServlet;
import de.hackerspacebremen.odl.HomeServlet;


public class ServletsModule extends ServletModule {

	@Override
	protected void configureServlets() {
		serve("/device").with(DeviceServlet.class);
		serve("/admin").with(AdminServlet.class);
		serve("/*").with(HomeServlet.class);
	}
}

