package com.dlvtc;

public class BookBean {
    private int bookid;
    private String bookname;
    private String author;
    private float price;
    private String publisher;
    public BookBean() {
        bookid = 1000;
        bookname = "Java";
        author = "James Gosling";
        price = 100;
        publisher = "Sun Microsystems";
    }

    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
}
