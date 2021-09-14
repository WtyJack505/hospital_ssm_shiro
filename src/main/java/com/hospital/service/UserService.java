package com.hospital.service;

import com.hospital.entity.User;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author wty
 * on 2021/7/11
 */
@Service
public interface UserService {
    /**
     * 拿出所有数据
     * @return
     */
    List<User> getAllUser();

    /**
     * 根据id查出用户
     * @param id
     * @return
     */
    User findUserById(Long id);

    /**
     * 通过登录名（userNickName）查找用户信息
     *
     * @param userNickName
     * @return
     */
    User findUserByLoginName(String userNickName);




}
