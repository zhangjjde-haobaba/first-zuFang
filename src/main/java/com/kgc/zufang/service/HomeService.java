package com.kgc.zufang.service;

import com.kgc.zufang.beans.Home;

import java.util.List;

public interface HomeService {
    //根据区域或者小区名找房
    List<Home> queryHomeByRegionOrCommunity(String name);
}
