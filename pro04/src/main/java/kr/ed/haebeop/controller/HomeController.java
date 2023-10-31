package kr.ed.haebeop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class HomeController {

    @GetMapping(value = "/")
    public String index(Model model){
        return "/index";
    }

    @GetMapping(value = "/main")
    public String main(Model model){
        return "/include/main";
    }

    @GetMapping(value = "/sam")
    public String sam(Model model){
        return "/include/sam";
    }

    @GetMapping(value = "/sam2")
    public String sam2(Model model){
        return "/include/sam2";
    }
    /*@RequestMapping(value = "/company02", method = RequestMethod.GET)
    public String company02(Model model){
        return "/company/company02";
    }

    @RequestMapping(value = "/company03", method = RequestMethod.GET)
    public String company03(Model model){
        return "/company/company03";
    }

    @RequestMapping(value = "/event1", method = RequestMethod.GET)
    public String event1(Model model){
        return "/company/event1";
    }

    @RequestMapping(value = "/event2", method = RequestMethod.GET)
    public String event2(Model model){
        return "/company/event2";
    }*/

}
