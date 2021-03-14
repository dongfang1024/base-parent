package com.cnsa.acl.service;

import com.alibaba.fastjson.JSONObject;
import com.cnsa.acl.entity.Permission;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 权限 服务类
 * </p>
 *
 * @author testjava
 * @since 2020-01-12
 */
public interface PermissionService extends IService<Permission> {

    //获取全部菜单
    List<Permission> queryAllMenu();

    //根据角色获取菜单
    List<Permission> selectAllMenu(Long roleId);

    //给角色分配权限
    void saveRolePermissionRealtionShip(Long roleId, Long[] permissionId);

    //递归删除菜单
    void removeChildById(Long id);

    //根据用户id获取用户菜单
    List<String> selectPermissionValueByUserId(Long id);

    List<JSONObject> selectPermissionByUserId(Long id);

    //获取全部菜单
    List<Permission> queryAllMenuGuli();

    //递归删除菜单
    void removeChildByIdGuli(Long id);

    //给角色分配权限
    void saveRolePermissionRealtionShipGuli(Long roleId, Long[] permissionId);
}
