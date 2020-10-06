package com.crewfactory.main.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.MethodParameter;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.crewfactory.main.domain.VanalyzerDomain;
import com.crewfactory.main.service.CounterService;
import com.crewfactory.main.util.Utility;

@RestController
public class VanalyzerController {
	private static final Logger logger = LoggerFactory.getLogger(VanalyzerController.class);

	@Autowired
	CounterService counter;
	
	@RequestMapping(value = "/visit/counter.do", method = { RequestMethod.POST, RequestMethod.GET })
	public @ResponseBody void counter(@RequestBody VanalyzerDomain vanalyzer, HttpSession session, HttpServletRequest request) throws Exception {

		String ip = request.getHeader("X-FORWARDED-FOR");
		if (ip == null)	ip = request.getRemoteAddr();
		
		if (session.getAttribute("crewgs-visiter") == null) {
			
			Utility util = new Utility();
			String path = vanalyzer.getPath();
			String current = vanalyzer.getCurrent();
			String keyword = util.getKeyword(path);
			String sector = util.getSector(path, current);
			String area = "";
			Date getDate = new Date();
			SimpleDateFormat getToday = new SimpleDateFormat("yyyyMMdd");
			
			vanalyzer.setKeyword(keyword);
			vanalyzer.setSector(sector);
			vanalyzer.setArea(area);
			vanalyzer.setToday(getToday.format(getDate));
			logger.info("vanalyzer ============ ip : " + ip);
			/* 유입경로등록 */
			if(!"localhost".equals(vanalyzer.getDomain()) 
			 && ((!"121.135.160.87".equals(ip)) || (!"61.74.145.67".equals(ip)) || (!"119.197.80.138".equals(ip)))) {
				counter.increas_vanalyzer(vanalyzer);
				session.setAttribute("crewgs-visiter", vanalyzer);
				logger.info("vanalyzer ============ " + vanalyzer.toString());
			}			
		}else {
			logger.info("vanalyzer ============ sesseion is already available ");
		}		
	}
	
	public void resolveArgument(MethodParameter methodParameter, ModelAndViewContainer modelAndViewContainer,NativeWebRequest nativeWebRequest, WebDataBinderFactory webDataBinderFactory) {
	    HttpServletRequest request = (HttpServletRequest) nativeWebRequest.getNativeRequest();
	    String clientIp = request.getHeader("X-Forwarded-For");
	    if (StringUtils.isEmpty(clientIp)|| "unknown".equalsIgnoreCase(clientIp)) { clientIp = request.getHeader("Proxy-Client-IP"); }
	    if (StringUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) { clientIp = request.getHeader("WL-Proxy-Client-IP"); }
	    if (StringUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) { clientIp = request.getHeader("HTTP_CLIENT_IP"); }
	    if (StringUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) { clientIp = request.getHeader("HTTP_X_FORWARDED_FOR"); }
	    if (StringUtils.isEmpty(clientIp) || "unknown".equalsIgnoreCase(clientIp)) { clientIp = request.getRemoteAddr(); }
	}
}
