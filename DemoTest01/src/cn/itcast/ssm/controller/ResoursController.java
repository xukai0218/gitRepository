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

import cn.itcast.ssm.po.Resources;
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
	* @Title: SaveResources
	* @Description:
	* @param @param request
	* @param @throws Exception  
	* @return void
	* @throws
	*/
	@RequestMapping("/SaveResources") 
	public void SaveResources(HttpServletRequest request) throws Exception {
		String resourcesArr = request.getParameter("resources");
		List<Object> resourcesList =new ArrayList<>();
		//json数组转换list对象
		resourcesList= JsonUtil.JsonListToObj(resourcesArr, Resources.class);
		for(int i=0 ;i<resourcesList.size();i++){
			Resources resourcesObj = (Resources) resourcesList.get(i);
			//如果找不到就添加
			if(resources.selResourcesByid(resourcesObj.getId())==null ){
				resources.addResources((Resources) resourcesList.get(i));
			}else{
				resources.updateResources((Resources) resourcesList.get(i));
			}
			
		}
		

		
	}
}
