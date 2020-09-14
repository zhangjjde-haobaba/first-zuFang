package com.kgc.zufang.service.impl;

import com.kgc.zufang.beans.User;
import com.kgc.zufang.mapper.UserMapper;
import com.kgc.zufang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by wjs on 2020/9/11 11:46
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;
    @Override
    public boolean register(User user) {
        int row = userMapper.register(user);
        if (row > 0) {
            return true;
        }
        return false;
    }
}
