package com.hospital.entity;

import java.io.Serializable;

/**
 * @author lenovo
 * @title: wty
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/25 9:38
 */
public class RoleToResource implements Serializable {

    private static final long serialVersionUID = -3610522347799809849L;

    private Long id;

    private Long roleId;

    private Long resourceId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getResourceId() {
        return resourceId;
    }

    public void setResourceId(Long resourceId) {
        this.resourceId = resourceId;
    }

    @Override
    public String toString() {
        return "RoleToResource{" +
                "id=" + id +
                ", roleId=" + roleId +
                ", resourceId=" + resourceId +
                '}';
    }
}
