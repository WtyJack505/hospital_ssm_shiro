package com.hospital.test;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class TestLog4j2 {
    static Logger logger = LogManager.getLogger(TestLog4j2.class);

    public static void main(String[] args) {
        logger.trace("trace message。。。。。");
        logger.debug("debug message。。。。。。。");
        logger.info("info message。。。。。。。。。。");
        logger.warn("warn message。。。。。。。。。。。。");
        logger.error("error message。。。。。。。。。。。。。");
        logger.fatal("fatal message。。。。。。。。。。。。。。。");
        System.out.println("Hello SSM!");
    }

}
