package system.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import system.DAO.QuoteDAO;

import java.util.List;

@Service
public class QuoteService {

    @Autowired
    private QuoteDAO quoteDAO;

    public List getAllQuotes() {
        return quoteDAO.getListQuotes();
    }

}
