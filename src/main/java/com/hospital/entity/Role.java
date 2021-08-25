package com.hospital.entity;

import java.io.Serializable;

/**
 * @version 1.0
 * @title
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/24
 * @description:TODO
 */
public class Role implements Serializable {

    private static final long serialVersionUID = 4461899451505017847L;

    private Long rId;

    private String rName;

    private String rDesc;

    private String rStatus;

    private Integer rSeq;

    public Long getrId() {
        return rId;
    }

    public void setrId(Long rId) {
        this.rId = rId;
    }

    public String getrName() {
        return rName;
    }

    public void setrName(String rName) {
        this.rName = rName == null ? null : rName.trim();
    }

    public String getrDesc() {
        return rDesc;
    }

    public void setrDesc(String rDesc) {
        this.rDesc = rDesc == null ? null : rDesc.trim();
    }

    public String getrStatus() {
        return rStatus;
    }

    public void setrStatus(String rStatus) {
        this.rStatus = rStatus == null ? null : rStatus.trim();
    }

    public Integer getrSeq() {
        return rSeq;
    }

    public void setrSeq(Integer rSeq) {
        this.rSeq = rSeq;
    }

    @Override
    public String toString() {
        return "Role{" +
                "rId=" + rId +
                ", rName='" + rName + '\'' +
                ", rDesc='" + rDesc + '\'' +
                ", rStatus='" + rStatus + '\'' +
                ", rSeq=" + rSeq +
                '}';
    }
}