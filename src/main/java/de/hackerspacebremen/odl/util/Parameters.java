package de.hackerspacebremen.odl.util;

import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class Parameters {

	private Map<String, String> map;
	
	@SuppressWarnings("unchecked")
	public Parameters(final HttpServletRequest req){
		final Enumeration<String> keys = req.getParameterNames();
		map = new HashMap<String, String>();
		while(keys.hasMoreElements()){
			final String key = keys.nextElement();
			map.put(key, req.getParameter(key));
		}
	}
	
	public boolean getboolean(final String key){
		return Boolean.parseBoolean(map.get(key));
	}
	
	public String get(final String key){
		return map.get(key);
	}
	
	public int getint(final String key){
		final String value = map.get(key);
		return Integer.parseInt(value);
	}
	
	public Long getLong(final String key){
		final String value = map.get(key);
		return Long.valueOf(value);
	}
	
}
