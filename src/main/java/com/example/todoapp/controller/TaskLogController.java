package com.example.todoapp.controller;


import com.example.todoapp.model.Task;
import com.example.todoapp.model.TaskLog;
import com.example.todoapp.model.User;
import com.example.todoapp.repository.TaskLogRepo;
import com.example.todoapp.repository.TaskRepo;
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
import java.util.Collections;
import java.util.List;

@Controller
@RequestMapping("/todoApp")
public class TaskLogController {

    @Autowired
    TaskLogRepo taskLogRepo;

    @Autowired
    UserRepo userRepo;

    @Autowired
    TaskRepo taskRepo;


   /* @RequestMapping(value = "/user/{id}/{taskId}")
    public String getTaskDescription(@PathVariable("id") int id, @PathVariable("taskId") int taskId, Model model){
       *//* User user = userRepo.getOne(id);
        List<TaskLog> logs = user.getTasks();*//*
        model.addAttribute("logs", taskLogRepo.findAllById(Collections.singleton(taskId)));

        return "taskDescriptionForm";
    }*/

        @RequestMapping(value = "/user/{id}/task/{taskId}/desc")
        public String viewTaskDescription(@PathVariable("id") int id, @PathVariable("taskId") int taskId, Model model){
            model.addAttribute("user", userRepo.getOne(id));
         /*   model.addAttribute("task",taskRepo.getOne(taskId));*/
            model.addAttribute(new TaskLog());
            return "taskDescriptionForm";
        }

    @RequestMapping(value = "/user/{id}/task/{taskId}/desc", method = RequestMethod.POST)
    public String addTaskDescription(@PathVariable("id") int id, @PathVariable("taskId") int taskId, @Valid @ModelAttribute("taskLog") TaskLog log, BindingResult bindingResult, Model model){
        User user = userRepo.getOne(id);
       log.setTask(taskRepo.getOne(taskId));
        if(bindingResult.hasErrors()){
            return "taskDescriptionForm";
        }
        taskLogRepo.save(log);


        return "redirect:/todoApp/user/" + user.getUserId();
    }
}
