package com.example.todoapp.controller;

import com.example.todoapp.model.Task;
import com.example.todoapp.model.User;
import com.example.todoapp.repository.TaskRepo;
import com.example.todoapp.repository.UserRepo;
import org.dom4j.rule.Mode;
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
public class TaskController {

    @Autowired
    TaskRepo taskRepo;

    @Autowired
    UserRepo userRepo;

    @RequestMapping(value = "/user/{id}", method = RequestMethod.GET)
    public String getTasks(Model model, @PathVariable("id") int id){

        User user = userRepo.getOne(id);

        model.addAttribute("tasks", user.getTasks());
        model.addAttribute("user", user);
        model.addAttribute(new Task());

        return "taskForm";
    }

    @RequestMapping(value = "/user/{id}", method = RequestMethod.POST)
    public String addTask(@PathVariable("id") int id, @Valid @ModelAttribute("task") Task task, BindingResult bindingResult, Model model){

        User user = userRepo.getOne(id);

        model.addAttribute("tasks", user.getTasks());


        if(bindingResult.hasErrors()){
            return "taskForm";
        }

        task.setUser(user);
        taskRepo.save(task);

        return "redirect:/todoApp/user/" + user.getUserId();
    }

    @RequestMapping(value = "/user/{id}/task/{taskId}")
    public String editTask(@PathVariable("id")int id, @PathVariable("taskId") int taskId, Model model){

        model.addAttribute("task", taskRepo.getOne(taskId));
        model.addAttribute("user", userRepo.getOne(id));

        return "editTaskForm";
    }

    @RequestMapping(value = "/user/{id}/task/{taskId}", method = RequestMethod.POST)
    public String editTaskAndSave(@PathVariable("id")int id, @PathVariable("taskId") int taskId, @ModelAttribute Task task){

        User user = userRepo.getOne(id);

        task.setUser(user);
        taskRepo.save(task);

        return "redirect:/todoApp/user/" + user.getUserId();
    }
}
