/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nkrs.martialarts01.repo;

import com.nkrs.martialarts01.entity.Article;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository("ArticleRepository")
public interface ArticleRepository extends JpaRepository<Article, Long>{
    
}
