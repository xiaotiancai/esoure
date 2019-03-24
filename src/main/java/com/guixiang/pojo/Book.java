package com.how2java.pojo;

public class Book {
    int id;
    String bookname;
    String author;
    String content;
    String isbn;
    String year;
    String press;
    String price;
    int num;
    String type;
    String time;

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getBookname() {
        return bookname;
    }

    public String getContent() {
        return content;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPress() {
        return press;
    }

    public String getPrice() {
        return price;
    }

    public String getYear() {
        return year;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }
}
