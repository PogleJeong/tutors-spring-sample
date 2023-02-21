package mul.cam.a.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import mul.cam.a.dto.MemberDto;
import mul.cam.a.service.MemberService;

@Controller
public class MemberController {
	// controller -> service 생성 및 접근
	@Autowired
	MemberService service;
	
	@RequestMapping(value="home.do", method = RequestMethod.GET)
	public String home(Model model) {
		List<MemberDto> list = service.allMember();
		model.addAttribute("list",list);
		
		return "home";
	}
}
