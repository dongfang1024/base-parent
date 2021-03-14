package com.cnsa.acl.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.cnsa.acl.entity.User;

public interface UserService extends IService<User> {

    User selectByUsername(String username);

}
