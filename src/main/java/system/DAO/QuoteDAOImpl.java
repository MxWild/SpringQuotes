package system.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import system.model.Quote;
import java.util.List;

@Repository
public class QuoteDAOImpl implements QuoteDAO{

    // TODO нужно добавить логгер - сделай потом

    // SessionFactory for Hibernate
    private SessionFactory sessionFactory;
    private Session session;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    public void addQuote(Quote quote) {

        session = this.sessionFactory.getCurrentSession();
        session.persist(quote);
    }

    public void updateQuote(Quote quote) {

        session = this.sessionFactory.getCurrentSession();
        session.update(quote);
    }

    public void removeQuote(int id) {

        session = this.sessionFactory.getCurrentSession();
        Quote quote = (Quote) session.load(Quote.class, new Integer(id));

        if (quote != null) session.delete(quote);
    }

    public Quote getQuoteById(int id) {

        session = this.sessionFactory.getCurrentSession();
        Quote quote = (Quote) session.load(Quote.class, new Integer(id));

        return quote;
    }

    @SuppressWarnings("unchecked")
    public List<Quote> listAllQuotes() {

        session = this.sessionFactory.getCurrentSession();
        List<Quote> quoteList = session.createQuery("from Quote").list();

        return quoteList;
    }



    /*private List<Quote> quotesList = Arrays.asList(new Quote("Истинно любит тебя тот, кто втайне молится о тебе Богу.",
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
    }*/

}
