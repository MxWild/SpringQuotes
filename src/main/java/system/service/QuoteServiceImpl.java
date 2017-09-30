package system.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import system.DAO.QuoteDAO;
import system.model.Quote;
import java.util.List;

@Service
public class QuoteServiceImpl implements QuoteService {

    private QuoteDAO quoteDAO;

    public void setQuoteDAO(QuoteDAO quoteDAO) {
        this.quoteDAO = quoteDAO;
    }

    @Transactional
    public void addQuote(Quote quote) {
        this.quoteDAO.addQuote(quote);
    }

    @Transactional
    public void updateQuote(Quote quote) {
        this.quoteDAO.updateQuote(quote);
    }

    @Transactional
    public void removeQuote(int id) {
        this.quoteDAO.removeQuote(id);
    }

    @Transactional
    public Quote getQuoteById(int id) {
        return this.quoteDAO.getQuoteById(id);
    }

    @Transactional
    public List<Quote> listAllQuotes() {
        return this.quoteDAO.listAllQuotes();
    }
}
