package com.hospital.service.impl;

import com.hospital.mapper.RoleMapper;
import com.hospital.mapper.UserRoleMapper;
import com.hospital.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @title:RoleServiceImpl
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/25
 * @description:TODO
 */
@Repository
public class RoleServiceImpl implements RoleService {

    @Autowired
    private UserRoleMapper userRoleMapper ;
    @Autowired
    private RoleMapper roleMapper ;


    @Override
    public List<Long> findRoleIdListByUserId(Long userId) {
        return userRoleMapper.findRoleIdListByUserId(userId);
    }

    @Override
    public List<Map<Long, String>> findRoleResourceListByRoleId(Long roleId) {
        return roleMapper.findRoleResourceListByRoleId(roleId);
    }
}
