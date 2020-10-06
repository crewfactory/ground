package com.crewfactory.main.controller;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.domain.BlogDomain;
import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.FileManagerService;

@Controller
public class AdminWaveController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminWaveController.class);
	
	@Value("${file.upload-dir}")
	String uploadPath;
	
	@Autowired
	BlogService service;
	FileManagerService fm_service;
	
	@RequestMapping(value="/manager/blog/Wave.do", method=RequestMethod.GET)
	public String init(@RequestParam("section") String section, Model model) throws Exception {
		logger.info("wave, section =========================== "+section);
		SearchDomain sd = new SearchDomain();
		sd.setSearchSection(section);
		model.addAttribute("result", service.select(sd));
		return "/admin/blog/WaveList";
	}
	
	@RequestMapping(value="/manager/blog/WaveWrite.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/admin/blog/WaveWrite";
	}
	

	@RequestMapping("/manager/blog/WaveInsert.do")
	public String insert(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
			String section = request.getParameter("section");
			String openyn = request.getParameter("openyn");
			String topblog = request.getParameter("topblog");			
			String description = request.getParameter("description");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String taglib = request.getParameter("taglib");
			String regid = request.getParameter("regid");
			String regip = request.getParameter("regip");
			String reurl = request.getParameter("reurl");
			
		try {
			String path = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
			String id = UUID.randomUUID().toString();
			String extension = FilenameUtils.getExtension(mpf.getOriginalFilename());
			if (StringUtils.isNotEmpty(extension)) {
	        	id = id + "." + extension;
	        }
			logger.info("upload ===============> " + String.format("%s%s%s%s%s%s%s", uploadPath, File.separator, "blog" , File.separator, path, File.separator, id));
			File save = new File(String.format("%s%s%s%s%s%s%s", uploadPath, File.separator, "blog", File.separator, path, File.separator, id));
			FileUtils.forceMkdirParent(save);
			mpf.transferTo(save);

			BlogDomain domain = new BlogDomain();
		    domain.setSection(section);
		    domain.setOpenyn(openyn);
		    domain.setTopblog(topblog);
		    domain.setDescription(description);
		    domain.setThumbnail(String.format("%s%s%s", path, "/", id));
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setTaglib(taglib.replaceAll(" ", ""));
		    domain.setRegid(regid);
		    domain.setRegip(regip);

		    logger.info("Thumbnail ==============" + domain.getThumbnail());
		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		return "redirect:/manager/ok.do?home=&reurl="+reurl+"&section="+section+"&msg=succeed";
	}
	
	@RequestMapping(value="/manager/blog/WaveView.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx) );
		return "/admin/blog/WaveView"; 
	} 
	
	@RequestMapping("/manager/blog/WaveUpdate.do")
	public String update(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
			String idx = request.getParameter("idx");
			String section = request.getParameter("section");
			String openyn = request.getParameter("openyn");
			String topblog = request.getParameter("topblog");			
			String description = request.getParameter("description");
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String taglib = request.getParameter("taglib");
			String regid = request.getParameter("regid");
			String regip = request.getParameter("regip");
			String thumb = request.getParameter("thumb");
			String reurl = request.getParameter("reurl");
			
		try {
			
			BlogDomain domain = new BlogDomain();
			
			if(mpf.isEmpty()) {
				domain.setThumbnail(thumb);
			}else {
				String path = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
				String id = UUID.randomUUID().toString();
				String extension = FilenameUtils.getExtension(mpf.getOriginalFilename());
				if (StringUtils.isNotEmpty(extension)) {
		        	id = id + "." + extension;
		        }
				logger.info("upload ===============> " + String.format("%s%s%s%s%s%s%s", uploadPath, File.separator, "blog" , File.separator, path, File.separator, id));
				File save = new File(String.format("%s%s%s%s%s%s%s", uploadPath, File.separator, "blog", File.separator, path, File.separator, id));
				FileUtils.forceMkdirParent(save);
				mpf.transferTo(save);
				
				domain.setThumbnail(String.format("%s%s%s", path, "/", id));				
			}
			
		    domain.setIdx(Integer.parseInt(idx));
			domain.setSection(section);
		    domain.setOpenyn(openyn);
		    domain.setTopblog(topblog);
		    domain.setDescription(description);
		    
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setTaglib(taglib.replaceAll(" ", ""));
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    logger.info("Thumbnail ==============" + domain.getThumbnail());
		    
		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		return "redirect:/manager/ok.do?home=&reurl="+reurl+"&section="+section+"&msg=succeed";
	}
	
	@RequestMapping(value="/manager/blog/WaveDelete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/manager/blog/Wave.do";
	}
}
