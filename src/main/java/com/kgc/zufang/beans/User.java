package com.kgc.zufang.beans;

import lombok.Data;

/**
 * Created by wjs on 2020/9/13 13:13
 */
@Data
public class User {

    // 用户编号
    private Integer userId;
    // 用户名字
    private String userName;
    // 用户密码
    private String userPassword;
    // 用户类型
    private Integer userType;
    // 用户手机号
    private String userPhone;
    // 用户头像
    private String userHeadimg;
    // 用户性别
    private Integer userSex;
    // 用户QQ
    private String userQQ;
    // 用户是否是房东状态
    private Integer userStatic;

}
