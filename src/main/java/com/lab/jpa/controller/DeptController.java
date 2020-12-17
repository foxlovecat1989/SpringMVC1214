package com.lab.jpa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dept")
public class DeptController {
    
    @RequestMapping("/")
    public String read(){
        return "dept_page";
    }
}
