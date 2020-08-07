package com.spring.singer;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SingerController {
	
	private static final Logger logger = LoggerFactory.getLogger(SingerController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/singerMain.sin", method = RequestMethod.GET)
	public String index(Locale locale, Model model) {
		
		
		
		return "singer/singerIndex";
	}
	
}