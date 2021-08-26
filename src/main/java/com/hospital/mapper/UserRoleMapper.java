package com.hospital.mapper;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;

/**
 * @version 1.0
 * @title:UserRoleMapper
 * @author:WTY
 * @projectName:hospital_ssm_shiro
 * @date 2021/8/25
 * @description:TODO
 */
@Component
public interface UserRoleMapper {
    /**
     * 通过userId 查找 用户角色的id
     *
     * @param userId
     * @return
     */
    List<Long> findRoleIdListByUserId(Long userId);

}
