package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.Resources;


/**
* @ClassName: ResourcesMapper
* @Description:
* @author kai.xu
* @date 2017年12月29日
*
*/
public interface ResourcesMapper {
	//查询所有Resource 集合
	public List<Resources> selectAllResources() throws Exception;
	//得到 Resources 数
	public int selResourcesCount() throws Exception;
	//删除插入之前 的数量
	public void delResourcesCount(int id)throws Exception;
	//批量插入
	public void insertResourcesBatch(List resourcesList)throws Exception;
/*	
	//添加Resource
	public void addResources(Resources resources) throws Exception;
	
	public void delResources(String id) throws Exception;
	
	public Resources selResourcesByid(int id)throws Exception;
	
	public void updateResources(Resources resources)throws Exception;
	
*/	
	
}
