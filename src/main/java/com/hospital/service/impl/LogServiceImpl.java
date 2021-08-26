package com.hospital.service.impl;

import com.hospital.entity.Log;
import com.hospital.mapper.LogMapper;
import com.hospital.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;


/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/26 10:04
 */
@Repository
public class LogServiceImpl implements LogService {

    @Autowired
    private LogMapper logMapper;

    @Override
    public void insertLog(Log sysLog) {
        logMapper.insert(sysLog);
    }

    @Override
    public int delByDate(String date) {
        int count = logMapper.delLogCount(date);
        logMapper.delByDate(date);
        return count;
    }

}
