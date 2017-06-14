package com.click.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/msg")
public class MsgController {


		@RequestMapping(value="index")
		public String toIndex(){
			return "index";
		}
		
		@RequestMapping(value="shoot")
		public String toShoot(){
			return "signin";
			
		}
		
}
