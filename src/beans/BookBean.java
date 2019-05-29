/**
 * Copyright (C), 2015-2019
 * FileName: BookBean
 * Author:   niko
 * Date:     2019/5/9 10:02
 * Description: 书本
 * History:
 * <author>          <time>          <version>
 * 逝不等琴生          10:02           1.0
 */
package beans;

public class BookBean {
    //书号
    private int bookid;
    //书名
    private String bookname;
    //作者
    private String author;
    //价格
    private float price;
    //出版社
    private String publisher;
    public BookBean() {
        bookid=1000;
        bookname="Java Web开发";
        author="Abc";
        price=50;
        publisher="机械工业出版社";
    }
    public String getAuthor() {return author;}
    public void setAuthor(String author) {this.author = author;}
    public int getBookid() {return bookid;}
    public void setBookid(int bookid) {this.bookid = bookid;}
    public String getBookname() {return bookname;}
    public void setBookname(String bookname) {this.bookname = bookname;}
    public float getPrice() {return price;}
    public void setPrice(float price) {this.price = price;}
    public String getPublisher() {	return publisher;}
    public void setPublisher(String publisher) {this.publisher = publisher;}
}