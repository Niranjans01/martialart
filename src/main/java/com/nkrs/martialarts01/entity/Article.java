/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nkrs.martialarts01.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

@Entity(name = "articles")
public class Article {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "topic")
    private String topic;

    @Column(name = "articledesc")
    private String articledesc;

    @Column(name = "tags")
    private String tags;

    @Transient
    private MultipartFile files;

    @NotEmpty
    @Column(name = "imgpath")
    private String path;

    public Article() {
    }

    public Article(int id, String topic, String articledesc, String tags, MultipartFile files, String path) {
        this.id = id;
        this.topic = topic;
        this.articledesc = articledesc;
        this.tags = tags;
        this.files = files;
        this.path = path;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getArticledesc() {
        return articledesc;
    }

    public void setArticledesc(String articledesc) {
        this.articledesc = articledesc;
    }

    public String getTags() {
        return tags;
    }

    public void setTags(String tags) {
        this.tags = tags;
    }

    public MultipartFile getFiles() {
        return files;
    }

    public void setFiles(MultipartFile files) {
        this.files = files;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

}
