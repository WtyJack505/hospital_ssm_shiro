package com.hospital.service.impl;

import com.hospital.entity.User;
import com.hospital.mapper.UserMapper;
import com.hospital.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author wty
 * on 2021/7/11
 */
@Repository
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


    @Override
    public List<User> getAllUser() {
        return userMapper.getAllUser();
    }

    @Override
    public User findUserById(Long id) {
        return userMapper.findUserById(id);
    }

    /**
     * 根据登录名即nickName查找用户
     *
     * @param userNickName
     * @return
     */
    @Override
    public User findUserByLoginName(String userNickName) {
        return userMapper.findUserByLoginName(userNickName);
    }
}
