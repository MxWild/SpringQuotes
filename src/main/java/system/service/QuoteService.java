package system.service;

import system.model.Quote;

import java.util.List;

public interface QuoteService {

    // Add Quote
    void addQuote(Quote quote);

    // update Quote
    void updateQuote(Quote quote);

    // remove Qoute
    void removeQuote(int id);

    // get Quote
    Quote getQuoteById(int id);

    // get all Quotes
    List<Quote> listAllQuotes();

}
