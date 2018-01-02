package cn.itcast.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.RolesMapper;
import cn.itcast.ssm.po.Roles;

/**
* @ClassName: RolesServiceImpl
* @Description:
* @author kai.xu
* @date 2017年12月27日
*
*/
public class RolesServiceImpl implements cn.itcast.ssm.service.RolesService{
	@Autowired
	RolesMapper rolesMapper;
	
	@Override
	public List<Roles> selectAllRoles() throws Exception {
		
		return rolesMapper.selectAllRoles();
	}

}
