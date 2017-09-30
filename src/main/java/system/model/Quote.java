package system.model;

import java.util.Date;

public class Quote {

    private int id;
    private String textOfQuote;
    private Date addedDate;
    private Autor autor;
    private Category category;

    public Quote() {}

    public Quote(String textOfQuote, Autor autor, Category category) {
        this.textOfQuote = textOfQuote;
        this.autor = autor;
        this.category = category;
    }

}
