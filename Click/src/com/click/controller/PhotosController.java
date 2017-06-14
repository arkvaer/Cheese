package com.click.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.click.entity.Photos;
import com.click.entity.User;
import com.click.service.PhotosService;

@Controller
@SessionAttributes("nphotos")
@RequestMapping("photos")
public class PhotosController {

	@Resource
	private PhotosService photosService;

	@RequestMapping("upload")
	public String upload(HttpSession session, Photos photos, Model model) {
		String msg = "";
		User user = (User) session.getAttribute("nuser");
		String uid = user.getPhone();
		System.out.println(uid);
		photos.setType(user.getType());
		photos.setUid(uid);
		photos.setCreattime(new Date());
		photos.setType(user.getType());
		int i = photosService.addPhoto(photos);
		if (i == 1) {
			msg = "上传成功!";
		}
		System.out.println(photos);
		model.addAttribute("msg", msg);
		return "forward:/jump/toPersonal.do";
	}

	@RequestMapping(value = "like", method = RequestMethod.POST)
	@ResponseBody
	public void like(@RequestBody Photos photos) {
		
		int p = photosService.likes(photos);
		
		System.out.println(p);
		
		
	}



}
