package com.application.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mvc")
public class ApplicationMvcController {

    @GetMapping("/index")
    public String index(){
        return "index";
    }
}
