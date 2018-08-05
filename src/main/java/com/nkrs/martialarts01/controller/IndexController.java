/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nkrs.martialarts01.controller;

import com.nkrs.martialarts01.entity.User;
import com.nkrs.martialarts01.repo.ArticleRepository;
import com.nkrs.martialarts01.repo.StoriesRepository;
import com.nkrs.martialarts01.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class IndexController {
    
    @Autowired
    private StoriesRepository storyRepo;
    
    @Autowired
    private ArticleRepository articleRepo;
    
    @Autowired
    private UserRepository userRepos;
    
    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("articles",articleRepo.findAll());
        return "index";
    }
    
    @RequestMapping(value = "/getin",method = RequestMethod.GET)
    public String login(){
        return "register";
    }
    
    @RequestMapping(value = "/blogs",method = RequestMethod.GET)
    public String blogs(Model model){
        model.addAttribute("stories", storyRepo.findAll());
        return "blogs";
    }
  
        
    @RequestMapping(value = "/save/register", method = RequestMethod.POST)
    public String register(@ModelAttribute("maUsers")User user){
        userRepos.save(user);
        return "redirect:/getin";
    }
}
