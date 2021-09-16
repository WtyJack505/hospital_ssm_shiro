package com.hospital.common.shiro;

import org.apache.shiro.crypto.hash.Md5Hash;

/**
 * @version 1.0
 * @title:SHIROMD5
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/9/16
 * @description:TODO
 */
public class ShiroMD5 {
    /**
     * 表示用户账号，代表加密盐值，加密old字符串，返回加密后的数据
     *
     * @param userName
     * @param passWord
     * @return
     */
    public static String GetPwd(String userName, String passWord){
        // 密码加盐
        Md5Hash md5Hash = new Md5Hash(passWord, userName ,1024);
        String newMd5PassWord = md5Hash.toHex();
        return newMd5PassWord;

    }

}
