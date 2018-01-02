package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.Roles;

public interface RolesMapper {
	//查询所有角色
	public List<Roles> selectAllRoles() throws Exception;
}
