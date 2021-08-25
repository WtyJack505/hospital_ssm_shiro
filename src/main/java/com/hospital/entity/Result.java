package com.hospital.entity;

import java.io.Serializable;

/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/25 15:52
 */
public class Result implements Serializable {

    private static final long serialVersionUID = 1008671926258236500L;

    public static final int SUCCESS = 1;

    public static final int FAILURE = 1;

    private boolean success = false;

    private String msg = "";

    private Object obj = null;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }




}
