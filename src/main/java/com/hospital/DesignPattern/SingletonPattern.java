package com.hospital.DesignPattern;

/**
 * @author WTY
 * @title:
 * @projectName hospital_ssm_shiro
 * @description:
 * 单例模式的主要角色：
 * 单例类：包含一个实例且能自行创建这个实例的类。
 * 访问类：使用单例的类
 * 
 * @{@link http://c.biancheng.net/view/1338.html}
 *
 * 第 1 种：懒汉式单例
 * 该模式的特点是类加载时没有生成单例，只有当第一次调用 getlnstance 方法时才去创建这个单例
 * @date 2022/3/15 17:40
 */
public class SingletonPattern {
    /**
     * 保证 instance 在所有线程中同步
     */
    private static volatile SingletonPattern instance = null;

    //private 避免类在外部被实例化
    private SingletonPattern() {
    }

    public static synchronized SingletonPattern getInstance() {
        //getInstance 方法前加同步
        if (instance == null) {
            instance = new SingletonPattern();
        }
        return instance;
    }
}
