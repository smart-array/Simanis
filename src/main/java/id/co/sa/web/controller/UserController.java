package id.co.sa.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import id.co.sa.persistence.model.User;
import id.co.sa.persistence.service.IUserService;

@Controller
@RequestMapping("admin/user")
public class UserController {

	@Autowired
	private IUserService userService;

	@RequestMapping
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("admin/user/list");
		List<User> userList = userService.getUsers();
		modelAndView.addObject("users", userList);
		return modelAndView;
	}
}
