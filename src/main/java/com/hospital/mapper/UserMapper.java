package com.hospital.mapper;

import com.hospital.entity.User;

import java.util.List;

/**
 * @author wty
 * on 2021/7/11
 */
public interface UserMapper {
    /**
     * 获取所有user
     * @return
     */
    List<User> getAllUser();

    /**
     * 根据他的账户账户查找对应的userInfo
     * @param nickName
     * @return
     */
    List<User> getUserByNickName(String nickName);


}
