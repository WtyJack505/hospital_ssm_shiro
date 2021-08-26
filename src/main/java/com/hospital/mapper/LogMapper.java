package com.hospital.mapper;

import com.hospital.entity.Log;
import org.springframework.stereotype.Component;

/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description: TODO
 * @date 2021/8/26 9:51
 */
@Component
public interface LogMapper {
    /**
     * 添加日志
     *
     * @param record
     * @return
     */
    int insert(Log record);

    /**
     * 查出日志
     *
     * @param date
     * @return
     */
    int delLogCount(String date);

    /**
     * 删除
     *
     * @param date
     */
    void delByDate(String date);

}
