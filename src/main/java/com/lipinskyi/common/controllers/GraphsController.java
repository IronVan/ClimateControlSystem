package com.lipinskyi.common.controllers;

import com.lipinskyi.common.database.WorkingWithDatabase;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Random;

@Controller
public class GraphsController {


    @RequestMapping(value = "/temperatureHourly1", method = RequestMethod.GET)
    @ResponseBody
    public int[] temperatureHourly() {

        Random random = new Random();

        int[] array = new int[24];

        for (int index = 0; index < array.length; index++) {
            array[index] = random.nextInt(40);
        }
        return array;
    }

    @RequestMapping(value = "/temperatureHourly2", method = RequestMethod.GET)
    @ResponseBody
    public int[] temperatureHourly1() {

        int[] array = new int[24];
        WorkingWithDatabase workingWithDatabase = new WorkingWithDatabase();
        //workingWithDatabase.startInputRandomNumbers(0, 50);
        return array = workingWithDatabase.getDataFromDatabase();
    }
}
