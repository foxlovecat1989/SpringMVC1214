package com.lab.jpa.controller;

import com.lab.jpa.repository.CompanyDao;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dept")
public class DeptController {
    
    @Autowired
    private CompanyDao companyDao;
    
    @RequestMapping("/")
    public String read(Model model){
        List dept_list = companyDao.queryForAllDepts();
        model.addAttribute("dept_list", dept_list);
        return "dept_page";
    }
}
