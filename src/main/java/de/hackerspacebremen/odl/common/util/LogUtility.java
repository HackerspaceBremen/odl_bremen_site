package de.hackerspacebremen.odl.common.util;

import java.io.PrintWriter;
import java.io.StringWriter;

import com.google.inject.Singleton;

@Singleton
public final class LogUtility {

	/**
	 * I found this useful method as a snippet on stackoverflow.com: 
	 * 
	 * http://stackoverflow.com/questions/18546842/java-how-to-get-full-exception-message
	 * 
	 * Thanks to Narendra Pathai (http://stackoverflow.com/users/1719067/narendra-pathai)!!!
	 * 
	 * @param throwable
	 * 		given {@link Throwable} (exception)
	 * @return full stack trace
	 */
	public String extractStackTraceFromThrowable(final Throwable throwable) {
	     final StringWriter sw = new StringWriter();
	     final PrintWriter pw = new PrintWriter(sw, true);
	     throwable.printStackTrace(pw);
	     return sw.getBuffer().toString();
	}
}