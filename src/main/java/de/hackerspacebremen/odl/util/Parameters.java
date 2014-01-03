package de.hackerspacebremen.odl.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;

import com.google.inject.Inject;

import de.hackerspacebremen.odl.common.util.LogUtility;

public class Parameters {
	
	/**
     * static attribute used for logging.
     */
    private static final Logger logger = Logger.getLogger(Parameters.class.getName());

	private Map<String, String> map;
	
	@Inject
	private LogUtility logUtility;
	
	@SuppressWarnings("unchecked")
	public Parameters(final HttpServletRequest req){
		final Enumeration<String> keys = req.getParameterNames();
		map = new HashMap<String, String>();
		while(keys.hasMoreElements()){
			final String key = keys.nextElement();
			map.put(key, req.getParameter(key));
		}
	}
	
	public boolean keyExists(final String key){
		return map.containsKey(key);
	}
	
	public boolean getboolean(final String key){
		return Boolean.parseBoolean(map.get(key));
	}
	
	public Date getDate(final String dayKey, final String timeKey){
		final String completeDateParam = map.get(dayKey) + " " + map.get(timeKey);
		final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date date = null;
		try {
			date = sdf.parse(completeDateParam);
		} catch (ParseException e) {
			logger.severe("ParseException full stacktrace: " + this.logUtility.extractStackTraceFromThrowable(e));
		}
		return date;
	}
	
	public boolean getCheckboolean(final String key){
		return key.equals(map.get(key));
	}
	
	public String get(final String key){
		return map.get(key);
	}
	
	public int getint(final String key){
		final String value = map.get(key);
		final int result;
		if(value == null || value.isEmpty()){
			result = -1;
		}else{
			result = Integer.parseInt(value);
		}
		return result;
	}
	
	public Long getLong(final String key){
		final String value = map.get(key);
		return Long.valueOf(value);
	}
	
}
