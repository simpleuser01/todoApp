package com.example.todoapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/todoApp")
public class InfoController {

    @RequestMapping(value = "/FAQ")
    public String getFAQ(){
        return "faqForm";
    }
}
