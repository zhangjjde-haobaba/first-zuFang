package com.kgc.zufang.mapper;

import com.kgc.zufang.beans.Home;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface HomeMapper {
    //根据区域或者小区名找房
    List<Home> queryHomeByRegionOrCommunity(@Param("name") String name);
}
