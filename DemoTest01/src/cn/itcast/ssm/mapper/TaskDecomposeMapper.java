package cn.itcast.ssm.mapper;


import cn.itcast.ssm.po.Ret;



/**
* @ClassName: TaskDecomposeMapper
* @Description:
* @author kai.xu
* @date 2018年1月18日
*
*/
public interface TaskDecomposeMapper {
	//通过项目名找到全局参数
	public Ret selectRetByProjectId(String projectId) throws Exception;
	//新建gantt图插入 设置 初始化参数
	public void insertRetByProId(String projectId) throws Exception;
	//gantt图 清空保存  删除记录
	public void delRetByProId(String projectId) throws Exception;

	/*	
	public Ret selectAllRet(String projectName) throws Exception;

	public Ret selectRet() throws Exception;
	 */


}
