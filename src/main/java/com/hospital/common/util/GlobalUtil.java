package com.hospital.common.util;


import org.apache.log4j.Logger;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/26 10:14
 */
public class GlobalUtil {

    private static Logger LOGGER = Logger.getLogger(GlobalUtil.class);

    /**
     * 文件配置路径
     */
    public static final String PATHCONFIG = "/configuration/global.properties";

    public static String getValue(String key){
        try{
            Properties properties = new Properties();
            InputStream inputStream = GlobalUtil.class.getResourceAsStream(PATHCONFIG);
            properties.load(inputStream);
            inputStream.close();
            return properties.getProperty(key);
        } catch (IOException e) {
            LOGGER.error(e,e);
        }
        return null;
    }






}
