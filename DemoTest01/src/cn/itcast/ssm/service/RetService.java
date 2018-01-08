package cn.itcast.ssm.service;


import cn.itcast.ssm.po.Ret;


/**
* @ClassName: RetService
* @Description:
* @author kai.xu
* @date 2018年1月5日

*/
public interface RetService {
	//通过项目名找到
	public Ret selectAllRet(String projectName) throws Exception;
	
	public Ret selectRet() throws Exception;
	
}
