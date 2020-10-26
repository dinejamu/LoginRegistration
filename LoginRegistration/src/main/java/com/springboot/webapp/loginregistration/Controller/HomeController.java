package com.springboot.webapp.loginregistration.Controller;

import com.springboot.webapp.loginregistration.Model.UserDetails;
import com.springboot.webapp.loginregistration.Service.ServiceClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    private ServiceClass serviceClass;

    @RequestMapping(value = "",method = RequestMethod.GET)
    public String homepage(){
        return "home";
    }
    @RequestMapping(value = "register",method = RequestMethod.POST)
    public ModelAndView register(UserDetails user,BindingResult bindingResult){
        System.out.println(user.getStudentName());
        if(bindingResult.hasErrors()){
            System.out.println(bindingResult.hasErrors());
        return new ModelAndView("home");
        }
        serviceClass.register(user);
        ModelAndView mv=new ModelAndView("welcome");
        mv.addObject("user",user);
        return mv;
    }
}
