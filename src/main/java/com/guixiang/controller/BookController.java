package com.how2java.controller;

import com.how2java.pojo.Book;
import com.how2java.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("")

public class BookController {
 @Autowired
    BookService bookservice;
    @RequestMapping("info")
    public ModelAndView info(Book book,String isbn){
        ModelAndView mav =new ModelAndView();
        book=bookservice.info(isbn);
        bookservice.add(isbn);
        mav.addObject("book", book);
        if(book.getType().equals("pdf"))
        { mav.setViewName("pdf");
        return mav;}
        else {
            mav.setViewName("word");
            return mav;
        }
    }
    @RequestMapping("search")
    public ModelAndView search(String q){
        ModelAndView mav = new ModelAndView();
        List<Book> cs= bookservice.search(q);
        // 放入转发参数
        mav.addObject("book", cs);
        // 放入jsp路径
        mav.setViewName("search2");
        return mav;
    }
    @RequestMapping("insert")
    public ModelAndView insert(Book book){

        bookservice.insert(book);
       ModelAndView mav =new ModelAndView("redirect:/upload.jsp");
        return mav;
    }
}
