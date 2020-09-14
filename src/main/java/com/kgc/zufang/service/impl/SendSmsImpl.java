package com.kgc.zufang.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.kgc.zufang.service.SendSms;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Created by wjs on 2020/9/12 16:49
 */
@Service
public class SendSmsImpl implements SendSms {
    @Override
    public boolean send(String phoneNum, String templateCode) {
        DefaultProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAI4G379beEc3ajU7vhQbYq", "9zRJV2gjBgIzrL28NFrjt2mAilUsea");
        IAcsClient client = new DefaultAcsClient(profile);

        CommonRequest request = new CommonRequest();
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        // 自定义参数
        request.putQueryParameter("PhoneNumbers",phoneNum);
        request.putQueryParameter("SignName", "狂神说Java学习网站");
        request.putQueryParameter("TemplateCode",templateCode);

        Map<String, Object> code = new HashMap<String, Object>();

        Integer num = (int)((Math.random()*9+1)*100000);
        String numStr = num.toString();
        code.put("code",numStr);
        System.out.println(code);


        request.putQueryParameter("TemplateParam", JSONObject.toJSONString(code));
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
            System.out.println(response.getHttpResponse().isSuccess());
            return response.getHttpResponse().isSuccess();

        } catch (ServerException e) {
            e.printStackTrace();
        } catch (ClientException e) {
            e.printStackTrace();
        }
        return false;
    }
}
