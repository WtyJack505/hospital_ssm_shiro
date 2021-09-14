package com.hospital.service;

import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @title:RoleService
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/25
 * @description:TODO
 */
@Service
public interface RoleService {
    /**
     * 根据用户查询id查询权限集合
     *
     * @param userId
     * @return
     */
     List<Long> findRoleIdListByUserId(Long userId);

    /**
     * 通过角色ID查找对应的资源
     *
     * @param roleId
     * @return
     */
     List<Map<Long, String>> findRoleResourceListByRoleId(Long roleId);


}
