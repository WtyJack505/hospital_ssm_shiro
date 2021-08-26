package com.hospital.mapper;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @title:RoleMapper
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/25
 * @description:TODO
 */
@Component
public interface RoleMapper {
    /**
     * 通过角色 Id 资源路径
     * @param roleId
     * @return
     */
    List<Map<Long, String>> findRoleResourceListByRoleId(Long roleId);

}
