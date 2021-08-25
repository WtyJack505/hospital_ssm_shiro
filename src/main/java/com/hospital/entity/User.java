package com.hospital.entity;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @version 1.0
 * @title
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/24
 * @description:TODO
 */
public class User implements Serializable {

    private static final long serialVersionUID = 1375494403732116948L;

    private Long userId;
    
    private String userName;
    
    private Integer userSex;
    
    private Integer userAge;
    
    private String userPhone;
    
    private String userNickName;
    
    private String userPassword;
    
    private Integer userType;
    
    private Integer userStatus;
    
    @JsonFormat(timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date userCreateDate;
    
    private String userDeploymentId;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getUserSex() {
        return userSex;
    }

    public void setUserSex(Integer userSex) {
        this.userSex = userSex;
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserNickName() {
        return userNickName;
    }

    public void setUserNickName(String userNickName) {
        this.userNickName = userNickName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Integer getUserStatus() {
        return userStatus;
    }

    public void setUserStatus(Integer userStatus) {
        this.userStatus = userStatus;
    }

    public Date getUserCreateDate() {
        return userCreateDate;
    }

    public void setUserCreateDate(Date userCreateDate) {
        this.userCreateDate = userCreateDate;
    }

    public String getUserDeploymentId() {
        return userDeploymentId;
    }

    public void setUserDeploymentId(String userDeploymentId) {
        this.userDeploymentId = userDeploymentId;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userSex=" + userSex +
                ", userAge=" + userAge +
                ", userPhone=" + userPhone +
                ", userNickName='" + userNickName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userType=" + userType +
                ", userStatus=" + userStatus +
                ", userCreateDate=" + userCreateDate +
                ", userDeploymentId='" + userDeploymentId + '\'' +
                '}';
    }
}
