package cn.itcast.ssm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSON;

import cn.itcast.ssm.po.Assignment;
import cn.itcast.ssm.po.Resources;
import cn.itcast.ssm.po.TasksVo;
import cn.itcast.ssm.service.ResourcesService;
import cn.test.Person;
import cn.util.JsonUtil;

/**
 * @ClassName: ResoursController
 * @Description:
 * @author kai.xu
 * @date 2017年12月28日
 *
 */
@Controller
public class ResoursController {
	@Autowired
	ResourcesService resources;

	/**
	 * @Title: SaveResources @Description: @param @param request @param @throws
	 * Exception @return void @throws
	 */
	@RequestMapping("/SaveResources")
	public void SaveResources(HttpServletRequest request) {
		boolean isDel = true;
		int resourcesCount = 0;
		try {
		resourcesCount = resources.selResourcesCount();
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}

		String resourcesArr = request.getParameter("resources");

		// List<Object> resourcesList =new ArrayList<>();
		// json数组转换list对象
		// resourcesList= JsonUtil.JsonListToObj(resourcesArr, Resources.class);

		// json数组转换list对象
		List<Resources> resourcesList = JSON.parseArray(resourcesArr, Resources.class);
		
		if(resourcesList.size()!=0){
			for(int i = 0;i<resourcesList.size();i++){
				resourcesList.get(i).setId(i+1);
			}
			try {
				resources.insertResourcesBatch(resourcesList);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				isDel = false;
				e.printStackTrace();
			}
		}
		
		if(isDel){
			try {
				resources.delResourcesCount(resourcesCount);
			} catch (Exception e) {
				// TODO 自动生成的 catch 块
				e.printStackTrace();
			}
		}

		/*
		 * for(int i=0 ;i<resourcesList.size();i++){ Resources resourcesObj =
		 * (Resources) resourcesList.get(i); //如果找不到就添加
		 * if(resources.selResourcesByid(resourcesObj.getId())==null ){
		 * resources.addResources((Resources) resourcesList.get(i)); }else{
		 * resources.updateResources((Resources) resourcesList.get(i)); }
		 * 
		 * }
		 */

	}
}
