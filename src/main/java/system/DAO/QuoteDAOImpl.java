package system.DAO;

import org.springframework.stereotype.Repository;
import system.model.Author;
import system.model.Category;
import system.model.Quote;

import java.util.Arrays;
import java.util.List;

@Repository
public class QuoteDAO {

    private List<Quote> quotesList = Arrays.asList(new Quote("Истинно любит тебя тот, кто втайне молится о тебе Богу.",
                                                            "Николай Сербский",
                                                            "Великие Слова"),
                                                    new Quote("Люди злы в той мере, в какой несчастны.",
                                                            "Уильям Сомерсет Моэм",
                                                            "Великие Слова"));

    // Add Quote
    public void addQoute(String text, Author author, Category category) {

    }

    // Remove Quote
    public void removeQuote(Integer id) {

    }

    // List all Quotes
    public List<Quote> getListQuotes() {
        return quotesList;
    }

}
