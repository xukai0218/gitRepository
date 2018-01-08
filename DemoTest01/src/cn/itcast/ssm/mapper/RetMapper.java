package cn.itcast.ssm.mapper;


import cn.itcast.ssm.po.Ret;


/**
* @ClassName: RetMapper
* @Description:
* @author kai.xu
* @date 2018年1月5日
*
*/
public interface RetMapper {
	
	public Ret selectAllRet(String projectName) throws Exception;
	
	public Ret selectRet() throws Exception;
}
