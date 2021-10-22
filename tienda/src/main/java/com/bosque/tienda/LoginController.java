package com.bosque.tienda;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.bosque.DAO.LoginDAO;

import com.bosque.DTO.LoginApi;


@RestController
@RequestMapping("/Login")
public class LoginController {
	LoginDAO login=new LoginDAO();
	
	@GetMapping("/Log")
	
	public LoginApi Login() {
		
		return login.ceduli();
	}
}
