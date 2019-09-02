package dao;

import java.sql.Date;
import java.util.List;

import entry.Purchaser;

/**
 * 
 * @author 
 *
 */
public interface PurchaserDao {

	/**
	 * 添加购房用户数据项
	 */
	public int addInfo(int ROCKNUMBER, String REALNAME, String CARDTYPE, 
			String CARDCODE, String MOBILEPHONE, 
			String PURCHASETYPE, String PASSWORD, int ISMARGIN, 
			String VERIFYSTATUS,  String REQUESTSTATUS, int ESTATE_ID, 
			Date REGISTRATIONTIME, String SELECT_HOUSE_RESULT);

	/**
	 * 修改购房用户数据项
	 */
	public int verifyInfo(int PURCHASERID, int 
			ROCKNUMBER, String REALNAME, String CARDTYPE, 
			String CARDCODE, String MOBILEPHONE, 
			String PURCHASETYPE, String PASSWORD, int ISMARGIN, 
			String VERIFYSTATUS, String REQUESTSTATUS, int ESTATE_ID, Date REGISTRATIONTIME,
			String SELECT_HOUSE_RESULT);
	
	/**
	 * 根据人员id修改房源id
	 * @param PURCHASER_ID
	 * @param ESTATE_ID
	 * @return
	 */
	public boolean verifyInfo(int PURCHASER_ID,String ESTATE_ID);
	
	/**
	 * 删除购房用户数据项
	 */
	public int deleteInfo(int PURCHASERID);
	
	
	
	/**
	 * 查询购房用户数据项
	 */
	public List<Purchaser> selectInfo();
	
	/**
	 * 
	 * 登录信息验证
	 * @return	登录成功的用户信息
	 */
	public Purchaser login(String cardcode,String password) ;	
	
	/**
	 * 根据id查看人员信息
	 * @param PURCHASER_ID
	 * @return 符合条件的人员信息
	 */
	public Purchaser selectInfoByid(int PURCHASER_ID);
	
	
	/**
	 * 验证密码是否存在
	 * @param password
	 * @return true是存在
	 */
	public boolean login(String password) ;
	
	/**
	 * 查询数据项的数量
	 */
	public int getSum();
}
