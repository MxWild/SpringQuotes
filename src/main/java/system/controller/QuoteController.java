package system.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import system.model.Quote;
import system.service.QuoteService;

@Controller
//@RequestMapping("/quotes")
public class QuoteController {

    private QuoteService quoteService;

    @Autowired
//    @Qualifier(value = "QuoteService")
    @Qualifier(value = "quoteService")
    public void setQuoteService(QuoteService quoteService) {
        this.quoteService = quoteService;
    }

    @RequestMapping(value = "quotes", method = RequestMethod.GET)
    public String listQuotes(Model model) {
        model.addAttribute("quote", new Quote());
        model.addAttribute("listQuotes", this.quoteService.listAllQuotes());

        return "quotes";
    }

    @RequestMapping(value = "/quotes/add", method = RequestMethod.POST)
    public String addQuote(@ModelAttribute("quote") Quote quote) {
        if (quote.getId() == 0) this.quoteService.addQuote(quote);
        else this.quoteService.updateQuote(quote);

        return "redirect:/quotes";
    }

    @RequestMapping("/remove/{id}")
    public String removeQuote(@PathVariable("id")  int id){
        this.quoteService.removeQuote(id);

        return "redirect:/quotes";
    }

    @RequestMapping("/edit/{id}")
    public String editQuote(@PathVariable("id") int id, Model model) {
        model.addAttribute("Quote", this.quoteService.getQuoteById(id));
        model.addAttribute("listQuotes", this.quoteService.listAllQuotes());

        return "quotes";
    }

    @RequestMapping("quotedata/{id}")
    public String quoteData(@PathVariable("id") int id, Model model) {
        model.addAttribute("quote", this.quoteService.getQuoteById(id));

        return "quotedata";
    }

    /*    @Autowired
    private QuoteService quoteService;

    @RequestMapping(value = "/all", method = RequestMethod.GET)
    private @ResponseBody List<Quote> getAllQuotas() {
        return quoteService.getAllQuotes();
    }*/

 /*   @RequestMapping(value = "/all", method = RequestMethod.GET)
    public ModelAndView getAllQuotas() {
        return new ModelAndView("allQuotas", (Map<String, ?>) quoteService.getAllQuotes());
    }*/

}
