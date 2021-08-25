package com.hospital.mapper;

import com.hospital.entity.User;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author wty
 * @date 2021/7/11
 */
@Component
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

    /**
     * 根据id查找用户信息
     * @param id
     * @return
     */
    User findUserById(Long id);

    /**
     * 通過登陸名字（昵稱）查找 用戶
     *
     * @param userNickName
     * @return
     */
    User findUserByLoginName(String userNickName);




}
