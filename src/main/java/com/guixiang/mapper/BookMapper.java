package com.how2java.mapper;

import com.how2java.pojo.Book;

import java.util.List;

public interface BookMapper {
    public List<Book> search(String q);
    public Book info(String isbn);
    public int add(String isbn);
    public void insert(Book book);
}
