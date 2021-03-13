package com.cnsa.acl.entity;

import io.swagger.annotations.ApiModel;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

@ApiModel(value="User对象", description="用户表")
@Data
@EqualsAndHashCode(callSuper = false)
public class User implements Serializable {


}
