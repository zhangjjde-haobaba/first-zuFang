package com.kgc.zufang.service;



/**
 * Created by wjs on 2020/9/12 16:48
 */
public interface SendSms {

    boolean send(String phoneNum, String templateCode);
}
