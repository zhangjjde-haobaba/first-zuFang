package com.kgc.zufang.service.impl;

import com.kgc.zufang.beans.Home;
import com.kgc.zufang.mapper.HomeMapper;
import com.kgc.zufang.service.HomeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by jiang on 2020-09-15 12:02
 */
@Service
public class HomeServiceImpl implements HomeService {
    @Autowired
    private HomeMapper homeMapper;

    @Override
    public List<Home> queryHomeByRegionOrCommunity(String name){
        return homeMapper.queryHomeByRegionOrCommunity(name);
    }

}
