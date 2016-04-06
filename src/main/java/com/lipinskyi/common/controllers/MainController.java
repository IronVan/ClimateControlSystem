package com.lipinskyi.common.controllers;

import com.lipinskyi.common.database.WorkingWithDatabase;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Date;

@Controller
public class MainController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String showAuth() {return "login";}

    @RequestMapping(value = "/settings", method = RequestMethod.GET)
    public String showSettings() {return "settings";}

    @RequestMapping(value = "/graphs", method = RequestMethod.GET)
    public String showGraphs() {
        return "graphs";
    }

    @RequestMapping(value = "/contacts", method = RequestMethod.GET)
    public String showContacts() {
        return "contacts";
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String showMain() {
        System.out.println("Somebody entered  " + new Date());
        return "main";
    }

    @RequestMapping(value = "/map", method = RequestMethod.GET)
    public String showMap() {
        return "map";
    }

}