package com.cognizant.truyum.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	static SimpleDateFormat pvr = new SimpleDateFormat("dd/MM/yyyy");

	public static Date converttoDate(String date) throws ParseException {

		Date d = pvr.parse(date);
		return d;
	}

	public static String converttoString(Date date) {
		return pvr.format(date);
	}

}
