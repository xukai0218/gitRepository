package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.Roles;

public interface RolesService {
	public List<Roles> selectAllRoles() throws Exception;
}
