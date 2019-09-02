package dao;

import java.util.List;

import entry.Staff;
import entry.StaffDim;

public interface StaffDao {
	
	/**
	 * 添加员工信息
	 * @param EMPLOYEE_ID 工号
	 * @param EMPLOYEE_NAME 姓名
	 * @param EMPLOYEE_PASSWORD 密码
	 * @param PRIVILEGE 权限
	 * @return	是否添加成功
	 */
	public boolean addInfo(int EMPLOYEE_ID,String EMPLOYEE_NAME,String EMPLOYEE_PASSWORD,int PRIVILEGE);
	
	/**
	 * 根据员工工号删除员工信息
	 * @param EMPLOYEE_ID 工号
	 * @return	是否删除成功
	 */
	public boolean deletInfo(int EMPLOYEE_ID);
	
	/**
	 * 模糊查询员工信息
	 * @param EMPLOYEE_ID 工号
	 * @param EMPLOYEE_NAME 姓名
	 * @param EMPLOYEE_PASSWORD 密码
	 * @param PRIVILEGE 权限
	 * @return 符合查询条件的员工信息
	 */
	public Staff selectInfo(StaffDim staffDim);
	
	/**
	 * 登录查询
	 * @param name 姓名
	 * @param password 密码
	 * @return 验证成功的人员信息
	 */
	public Staff login(int employee_id,String password);

	/**
	 * 查询所有的员工信息
	 * @return 员工信息list集合
	 */
	public List<Staff> selectAllInfo();
	
	/**
	 * 根据工号主键修改员工信息
	 * @param EMPLOYEE_ID 工号
	 * @param EMPLOYEE_NAME 姓名
	 * @param EMPLOYEE_PASSWORD 密码
	 * @param PRIVILEGE	权限
	 * @return 是否修改成功
	 */
	public boolean verifyInfo(int EMPLOYEE_ID,String EMPLOYEE_NAME,String EMPLOYEE_PASSWORD,int PRIVILEGE);
}
