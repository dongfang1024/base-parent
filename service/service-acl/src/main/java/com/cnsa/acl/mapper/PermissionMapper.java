package com.cnsa.acl.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.cnsa.acl.entity.Permission;

import java.util.List;

public interface PermissionMapper extends BaseMapper<Permission> {

    List<String> selectPermissionValueByUserId(Long id);

    List<String> selectAllPermissionValue();

    List<Permission> selectPermissionByUserId(Long userId);
}
