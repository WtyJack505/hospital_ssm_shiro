package com.hospital.service;

import com.hospital.entity.Log;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/26 10:03
 */
@Service
public interface LogService {
    /**
     * 增加日志
     *
     * @param sysLog
     */
    void insertLog(Log sysLog);

    /**
     * 删除日志
     *
     * @param date
     * @return
     */
    int delByDate(String date);


}
