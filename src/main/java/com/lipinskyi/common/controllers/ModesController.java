package com.lipinskyi.common.controllers;

import com.lipinskyi.common.database.WorkingWithDatabase;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ModesController {

    @RequestMapping(value = "/modes", method = RequestMethod.GET)
    public ModelAndView showModes() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("modes");
        WorkingWithDatabase workingWithDatabase = new WorkingWithDatabase();
        String currentMode = workingWithDatabase.getMode();
        modelAndView.addObject("message", currentMode);
        return modelAndView;
    }

    @RequestMapping(value = "/chooseModes", method = RequestMethod.GET)
    public ModelAndView printMode(@RequestParam(value = "mode") String mode) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("modes");
        WorkingWithDatabase workingWithDatabase = new WorkingWithDatabase();
        workingWithDatabase.setMode(mode);
        modelAndView.addObject("message", mode);
        return modelAndView;
    }
}
