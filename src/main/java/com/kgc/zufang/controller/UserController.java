package com.kgc.zufang.controller;

import com.kgc.zufang.beans.User;
import com.kgc.zufang.service.SendSms;
import com.kgc.zufang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by wjs on 2020/9/11 11:19
 */
@Controller
public class UserController {

    @Autowired
    private SendSms sendSms;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/toLogin")
    public String toLogin() {
        return "login";
    }

    @RequestMapping(value = "/toRegist")
    public String toRegist() {
        return "regist";
    }

    @ResponseBody
    @RequestMapping(value = "/send")
    public boolean send(String phoneNum, String templateCode) {
        System.out.println(phoneNum + "：" + templateCode);

        return sendSms.send(phoneNum,templateCode);
    }


    @ResponseBody
    @RequestMapping(value = "/register")
    public boolean register(User user) {

        boolean regFlag = userService.register(user);
        System.out.println("regFlag：" + regFlag);
        return regFlag;
    }
}
