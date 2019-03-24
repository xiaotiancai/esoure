package com.how2java.service;

import com.how2java.pojo.Book;

import java.util.List;

public interface BookService {
    List<Book> search(String q);
    Book info(String isbn);
    int add(String isbn);
    void insert(Book book);
}
