package system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import system.model.Quote;
import system.service.QuoteService;

import java.util.List;
import java.util.Map;

@Controller
//@RequestMapping("/quotes")
public class QuoteController {

    @Autowired
    private QuoteService quoteService;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    private @ResponseBody List<Quote> getAllQuotas() {
        return quoteService.getAllQuotes();
    }

 /*   @RequestMapping(value = "/all", method = RequestMethod.GET)
    public ModelAndView getAllQuotas() {
        return new ModelAndView("allQuotas", (Map<String, ?>) quoteService.getAllQuotes());
    }*/

}
