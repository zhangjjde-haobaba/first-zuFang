package com.kgc.zufang.controller;

import com.kgc.zufang.beans.Home;
import com.kgc.zufang.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * Created by jiang on 2020-09-15 12:01
 */
@Controller
public class HomeController {
    @Autowired
    private HomeService homeService;

    @RequestMapping(value = "/queryHome")
    public String queryHouse(Map<String,Object> map, HttpServletRequest request){
        String name = request.getParameter("inputContent");
        List<Home> conditionHome = homeService.queryHomeByRegionOrCommunity(name);
        map.put("conditionHome",conditionHome);
        return "success";
    }
}
