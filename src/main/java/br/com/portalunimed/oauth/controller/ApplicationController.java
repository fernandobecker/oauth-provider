package br.com.portalunimed.oauth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("application")
public class ApplicationController {

    @RequestMapping
    public ModelAndView indexPage() {
        return new ModelAndView("application/index");
    }
    
}
