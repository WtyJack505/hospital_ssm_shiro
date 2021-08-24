package com.hospital.service;

import com.hospital.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author wty
 * on 2021/7/11
 */
@Repository
public interface UserService {
    /**
     * 拿出所有数据
     * @return
     */
    List<User> getAllUser();
}
