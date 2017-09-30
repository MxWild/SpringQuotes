package system.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "QUOTES")
public class Quote {

    @Id
    @GeneratedValue
    @Column(name = "ID")
    private int id;

    @Column(name = "TEXT_OF_QUOTE")
    private String textOfQuote;

    @Column(name = "ADDED_DATE")
    private Date addedDate;


    private Author author;

    private Category category;

    public Quote() {}

    public Quote(String textOfQuote, Author author, Category category) {
        this.textOfQuote = textOfQuote;
        this.author = author;
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTextOfQuote() {
        return textOfQuote;
    }

    public void setTextOfQuote(String textOfQuote) {
        this.textOfQuote = textOfQuote;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
}
