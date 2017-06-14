package com.click.controller;

import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.click.entity.Photos;
import com.click.entity.User;
import com.click.service.PhotosService;
import com.click.service.UserService;

@Controller // 控制页面跳转的Controller
@SessionAttributes("nphotos")
@RequestMapping("/jump")
public class JumpController {

	@Resource
	private PhotosService photosService;
	@Resource
	private UserService userService;
	@RequestMapping(value = "index") // 主页
	public String toIndex() {
		return "index";
	}

	@RequestMapping(value = "shoot") // 最佳摄影
	public String toShoot(Model model) {
		List<Photos> list = photosService.findAllCarmemanPhotos();
		model.addAttribute("bestShoots", list);
		return "shoot";
	}

	@RequestMapping("customer") // 最美用户
	public String toCustomer(Model model) {
		List<Photos> photos = photosService.findAllCustomerPhotos();
		model.addAttribute("customer", photos);
		return "customer";
	}

	@RequestMapping("serch") // 搜索
	public String toSerch() {
		return "serch";
	}

	@RequestMapping("sign") // 跳转到登录页面
	public String toSignin() {
		return "signin";
	}

	@RequestMapping("signup") // 注册
	public String signUp() {

		return "signup";
	}

	@RequestMapping("picin")
	public String picin(){
		
		return "picin";
	} 
	
	@RequestMapping("publish")
	public String toUpload() {
		return "publish";

	}

	@RequestMapping(value="toPersonal", method={RequestMethod.POST, RequestMethod.GET})
	public String echo(HttpSession session, Model model) {
		User user = (User) session.getAttribute("nuser");
		List<Photos> photos = photosService.findAllPhotosByUid(user);
		Collections.reverse(photos);
		model.addAttribute("nphotos", photos);
		return "personal";
	}
	
	@RequestMapping(value = "viewpersonal", method = RequestMethod.GET)
	public String viewPersonal(String uid, Model model){
		System.out.println(uid);
		User user = userService.selectByPhone(uid);
		List<Photos> photos = photosService.findAllPhotosByUid(user);
		Collections.reverse(photos);
		model.addAttribute("vuser", user);
		model.addAttribute("vphotos", photos);
		return "viewpersonal";
	}

}
