/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nkrs.martialarts01.controller;

import com.nkrs.martialarts01.entity.Article;
import com.nkrs.martialarts01.entity.Stories;
import com.nkrs.martialarts01.repo.ArticleRepository;
import com.nkrs.martialarts01.repo.StoriesRepository;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/admin")
public class AdminController {

    public static String uploadDirectory = System.getProperty("user.dir") + "/src/main/resources/static/uploads";

    @Autowired
    private StoriesRepository storyRepo;

    @Autowired
    private ArticleRepository articleRepo;

    @RequestMapping(method = RequestMethod.GET)
    private String createPost(Model model) {
        return "admin/create";
    }

    @RequestMapping(value = "/article", method = RequestMethod.POST)
    private String createArticle(@ModelAttribute("articles") Article article, @RequestParam("files") MultipartFile[] files) {
        StringBuilder filenames = new StringBuilder();
        for (MultipartFile file : files) {
            Path fileNameandPath = Paths.get(uploadDirectory, file.getOriginalFilename());
            filenames.append(file.getOriginalFilename());
            try {
                Files.write(fileNameandPath, file.getBytes());
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        article.setPath(filenames.toString());
        articleRepo.save(article);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/story", method = RequestMethod.POST)
    private String createStory(@ModelAttribute("stories") Stories stories) {
        storyRepo.save(stories);
        return "redirect:/admin";
    }
}
