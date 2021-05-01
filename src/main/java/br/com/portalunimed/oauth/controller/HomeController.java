package br.com.portalunimed.oauth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/home")
public class HomeController {

    @RequestMapping
    public ModelAndView indexPage() {
        return new ModelAndView("home/index");
    }
    
}