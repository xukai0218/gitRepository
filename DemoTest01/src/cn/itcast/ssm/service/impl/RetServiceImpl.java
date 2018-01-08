package cn.itcast.ssm.service.impl;


import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.RetMapper;
import cn.itcast.ssm.po.Ret;
import cn.itcast.ssm.service.RetService;



/**
* @ClassName: RetServiceImpl
* @Description:
* @author kai.xu
* @date 2018年1月5日
*
*/
public class RetServiceImpl implements RetService{

	@Autowired
	private RetMapper retMapper;


	@Override
	public Ret selectAllRet(String projectName) throws Exception {
		// TODO 自动生成的方法存根
		return retMapper.selectAllRet(projectName);
	}


	@Override
	public Ret selectRet() throws Exception {
		// TODO 自动生成的方法存根
		return retMapper.selectRet();
	}

	

}
