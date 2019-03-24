package com.how2java.service.impl;

import com.how2java.mapper.BookMapper;
import com.how2java.pojo.Book;
import com.how2java.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BookServiceImpl  implements BookService {
    @Autowired
    BookMapper bookMapper;


    public void insert(Book book) {
        bookMapper.insert(book);
    }
    public List<Book> search(String q){
        return bookMapper.search(q);
    }
   public Book info(String isbn){return bookMapper.info(isbn);}
    public int add(String isbn){return bookMapper.add(isbn);};
}