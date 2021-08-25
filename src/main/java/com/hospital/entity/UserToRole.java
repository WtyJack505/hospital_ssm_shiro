package com.hospital.entity;

import java.io.Serializable;

/**
 * @version 1.0
 * @title
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/24
 * @description:用户角色关系
 */
public class UserToRole implements Serializable {

    private static final long serialVersionUID = 3475606179316683614L;

    private Long id;

    private Integer userId;

    private Integer roleId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    @Override
    public String toString() {
        return "UserToRole{" +
                "id=" + id +
                ", userId=" + userId +
                ", roleId=" + roleId +
                '}';
    }
}
