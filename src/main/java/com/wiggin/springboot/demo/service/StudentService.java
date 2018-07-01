package com.wiggin.springboot.demo.service;

import com.wiggin.springboot.demo.model.Student;

/**
 * copyright 2015-2020
 *
 * @author wiggin
 * @date 2017/9/26 22:41
 * @Description: 接口方法定义
 */
public interface StudentService {

    /**
     * 通过id查询
     * @param id
     */
    Student queryById(int id);
}
