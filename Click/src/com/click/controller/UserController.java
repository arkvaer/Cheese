package com.click.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.click.entity.User;
import com.click.service.UserService;

@Controller
@SessionAttributes("nuser")
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserService userService;

	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public String login(Model model, String phone, String password) {
		User user = userService.signin(phone, password);
		if (user != null) {
			model.addAttribute("nuser", user);
			return "index";
		} else {
			model.addAttribute("fail", "用户名或密码错误");
			return "signin";
		}

	}

	@RequestMapping("logout")
	public String logout(HttpSession session, HttpServletRequest request, Model model) {

		User user = (User) session.getAttribute("nuser");
		session.removeAttribute("nuser");
		user = (User) session.getAttribute("nuser");
		System.out.println(user);
		return "redirect:/jump/sign.do";

	}

	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public String signup(Model model, User user) {
		User user1 = userService.selectByPhone(user.getPhone());

		boolean flag = true;
		boolean flag1 = false;
		if (user1 != null) {
			flag = false;
		}
		String msg = "";
		if (flag) {
			flag1 = userService.signup(user);
			if (flag1) {
				msg = "注册成功,开始登录吧";
				model.addAttribute("msg", msg);
				return "signin";
			} else {
				msg = "sorry,注册失败啦!";
				model.addAttribute("msg", msg);
				return "signup";

			}
		} else {
			msg = "该账号已注册,请登录";
			model.addAttribute("msg", msg);
			return "signup";
		}
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(Model model, User user) {
		userService.update(user);
		User user2 = userService.selectByPhone(user.getPhone());
		System.out.println(user);
		model.addAttribute("nuser", user2);
		return "personal";
	}

	@RequestMapping(value = "find", method = { RequestMethod.POST, RequestMethod.GET })
	public String find(User user, Model model) {
		List<User> cameraman = userService.findCarmemanByName(user);
		List<User> customer = userService.findCustomerByName(user);
		model.addAttribute("cameraman", cameraman);
		model.addAttribute("customer", customer);
		return "serch";
	}

	@RequestMapping("pickin")
	public String pickin(HttpSession session, User user, Model model) {
		user = (User) session.getAttribute("nuser");
		String msg = "";
		userService.pickin(user);
		user.setType(2);
		msg = "认证成功!";
		model.addAttribute("nuser", user);
		model.addAttribute("msg", msg);
		return "picin";
		
	}

	@RequestMapping("modPasswd")
	public String modPasswd(HttpSession session,User user, String password, String npassword, Model model){
		User nuser = (User) session.getAttribute("nuser");
		nuser.setPassword(password);
		String msg = "";
		int i = userService.configPasswd(nuser);
		if(i == 1){
			userService.modPasswd(nuser);
			msg = "密码修改成功!";
		}else {
			msg = "你输入的密码有误,请确认后重新输入";
		}
		System.out.println(npassword);
		model.addAttribute("msg", msg);
		return "redirect:/jump/toPersonal.do";
		
	}
	
	@RequestMapping("error")
	public String error() {
		return "404";
	}

}
