package com.cnsa.acl.service;

import com.cnsa.acl.entity.Role;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author testjava
 * @since 2020-01-12
 */
public interface RoleService extends IService<Role> {

    //根据用户获取角色数据
    Map<String, Object> findRoleByUserId(Long userId);

    //根据用户分配角色
    void saveUserRoleRealtionShip(Long userId, Long[] roleId);

    List<Role> selectRoleByUserId(Long id);
}
