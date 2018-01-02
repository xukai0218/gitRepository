package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.Resources;

public interface ResourcesService {
	//查询所有Resource
	public List<Resources> selectAllResources() throws Exception;
	
	public void addResources(Resources resources) throws Exception;

	public void delResources(String id) throws Exception;
	
	public Resources selResourcesByid(int id)throws Exception;
	
	public void updateResources(Resources resources)throws Exception;
}
