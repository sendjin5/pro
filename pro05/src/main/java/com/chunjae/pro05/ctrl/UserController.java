package com.chunjae.pro05.ctrl;

import com.chunjae.pro05.biz.UserService;
import com.chunjae.pro05.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping( "/")
    public String home(Model model){
        return "/user/index";
    }


    @GetMapping( "/login")
    public ModelAndView getLoginPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("user/login");
        return modelAndView;
    }


    @GetMapping("/registration")
    public ModelAndView getRegistrationPage() {
        ModelAndView modelAndView = new ModelAndView();
        User user = new User();
        modelAndView.addObject("user", user);
        modelAndView.setViewName("/user/registration");

        return modelAndView;
    }
//
//    //@Valid
//    @PostMapping("/registration")
//    public ModelAndView createNewUser(User user, BindingResult bindingResult) {
//        ModelAndView modelAndView = new ModelAndView();
//
//        User userExists = userService.loadUserByUsername(user);
//        if (userExists != null) {
//            bindingResult
//                    .rejectValue("id", "error.id","There is already a user registered with the loginId provided");
//        }
//
//        if (bindingResult.hasErrors()) {
//            modelAndView.setViewName("/user/registration");
//        } else {
//            userService.(user);
//            modelAndView.addObject("successMessage", "User has been registered successfully");
//            modelAndView.addObject("user", new User());
//            modelAndView.setViewName("/user/registration");
//        }
//        return modelAndView;
//    }

    @GetMapping("/home")
    public ModelAndView home(){
        ModelAndView modelAndView = new ModelAndView();

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User userPrincipal = (User) auth.getPrincipal();

        System.out.println(userPrincipal.toString());

        modelAndView.addObject("userName", "Welcome " + userPrincipal.getName() + " (" + userPrincipal.getId() + ")");
        modelAndView.addObject("adminMessage","Content Available Only for Users with Admin Role");
        modelAndView.setViewName("/user/home");
        return modelAndView;
    }

    @GetMapping("/exception")
    public ModelAndView getUserPermissionExceptionPage() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("/user/access-denied");
        return mv;
    }
}
