package com.hospital.entity;

import java.io.Serializable;

/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/26 9:42
 */
public class Log implements Serializable {

    private static final long serialVersionUID = -5770245225742993481L;

    private Long id;
    /**用户名**/
    private String loginName;
    /**请求名称**/
    private String operationName;
    /**请求类*/
    private String operationClass;
    /**请求路径*/
    private String operationAddress;
    /**请求参数*/
    private String params;
    /**地址 ip*/
    private String ip;
    /**时间*/
    private String createTime;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName == null ? null : loginName.trim();
    }

    public String getOperationName() {
        return operationName;
    }

    public void setOperationName(String operationName) {
        this.operationName = operationName == null ? null : operationName.trim();
    }

    public String getOperationClass() {
        return operationClass;
    }

    public void setOperationClass(String operationClass) {
        this.operationClass = operationClass == null ? null : operationClass.trim();
    }

    public String getOperationAddress() {
        return operationAddress;
    }

    public void setOperationAddress(String operationAddress) {
        this.operationAddress = operationAddress == null ? null : operationAddress.trim();
    }

    public String getParams() {
        return params;
    }

    public void setParams(String params) {
        this.params = params == null ? null : params.trim();
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip == null ? null : ip.trim();
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
