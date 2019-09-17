package com.example.todoapp.controller;

import com.example.todoapp.model.User;
import com.example.todoapp.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping("/todoApp")
public class UserController {

    @Autowired
    UserRepo userRepo;

    @RequestMapping(value = "/")
    public String getMainForm(Model model){
        model.addAttribute("users", userRepo.findAll());
        model.addAttribute(new User());
        return "mainForm";
    }

    @RequestMapping(value = "/add")
    public String addUser(@Valid @ModelAttribute("user")  User user, BindingResult bindingResult, Model model){
        model.addAttribute("users", userRepo.findAll());

        if(bindingResult.hasErrors()){
            return "mainForm";
        }
        userRepo.save(user);


        return "redirect:/todoApp/";
    }

    @RequestMapping(value = "/edit/{id}")
    public String editUser(@PathVariable("id") int id,  Model model){
      model.addAttribute("user", userRepo.getOne(id));


        return "editUserForm";
    }

    @RequestMapping(value = "/edit/", method = RequestMethod.POST)
    public String editUserAndSave(@Valid @ModelAttribute User user, BindingResult bindingResult){
        if(bindingResult.hasErrors()){
            return "editUserForm";
        }
        userRepo.saveAndFlush(user);
        return "redirect:/todoApp/";
    }

    @RequestMapping(value = "/delete/{id}")
    public String deleteUser(@PathVariable("id") int id){
        userRepo.deleteById(id);
        return "redirect:/todoApp/";
    }



}
