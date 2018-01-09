package cn.itcast.ssm.service.impl;

import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.exception.CustomException;
import cn.itcast.ssm.mapper.ItemsMapper;
import cn.itcast.ssm.mapper.ItemsMapperCustom;
import cn.itcast.ssm.mapper.ResourcesMapper;
import cn.itcast.ssm.po.Items;
import cn.itcast.ssm.po.ItemsCustom;
import cn.itcast.ssm.po.ItemsQueryVo;
import cn.itcast.ssm.po.Resources;
import cn.itcast.ssm.service.ItemsService;
import cn.itcast.ssm.service.ResourcesService;

/**
 * @ClassName: ResourceServiceImpl
 * @Description:
 * @author kai.xu
 * @date 2017年12月27日
 *
 */
public class ResourcesServiceImpl implements ResourcesService{

	@Autowired
	private ResourcesMapper resourceMapper;

	@Override
	public List<Resources> selectAllResources() throws Exception {
		// TODO 自动生成的方法存根
		return resourceMapper.selectAllResources();
	}

	@Override
	public void addResources(Resources resources) throws Exception {
		// TODO 自动生成的方法存根
		resourceMapper.addResources(resources);
	}

	@Override
	public void delResources(String id) throws Exception {
		// TODO 自动生成的方法存根

	}

	@Override
	public Resources selResourcesByid(int id) throws Exception {
		return resourceMapper.selResourcesByid(id);
		// TODO 自动生成的方法存根

	}

	@Override
	public void updateResources(Resources resources) throws Exception {
		// TODO 自动生成的方法存根
		 resourceMapper.updateResources(resources);
	}

	@Override
	public int selResourcesCount() throws Exception {
		// TODO 自动生成的方法存根
		return resourceMapper.selResourcesCount();
	}

	@Override
	public void delResourcesCount(int id) throws Exception {
		// TODO 自动生成的方法存根
		resourceMapper.delResourcesCount(id);
	}

	@Override
	public void insertResources(List resourcesList) throws Exception {
		// TODO 自动生成的方法存根
		resourceMapper.insertResources(resourcesList);
	}





}
