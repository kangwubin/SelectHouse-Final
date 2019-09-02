package dao;

import java.sql.Date;
import java.util.List;

import entry.HouseSource;

/**
 * HouseSourcDao
 * @author ...
 *
 */
public interface HouseSourceDao {
	/**
	 *添加房源信息
	 * @param 楼盘名称,开发企业,电话,预（现）售楼栋号,现场接受资料时间,意向登记开始时间,意向登记结束时间,预（现）售证号,现场接受资料地点,摇号开始时间,摇号结束时间,选房开始时间,选房结束时间
	 * @return 是否操作成功
	 */
	public boolean addInfo(String ESTATE_NAME,
						   String ENTERPRISE_NAME,
						   String PHONE,
						   String BUILDING_NO,
						   Date RECEIVE_METERIAL_START_TIME,
						   Date PURPOSE_REGISTER_START_TIME,
						   Date PURPOSE_REGISTER_END_TIME,
						   int IDENTIFICATION_ID,
						   String RECEIVE_METERIAL_ADDRESS,
						   Date LOTTERY_TIME,
						   Date SELECT_HOUSE_TIME,
						   String INFO_DESCRIPTION,
						   Date RECEIVE_METERIAL_END_TIME,
						   int HOUSE_AMOUNT);
	
	/**
	 * 添加数据
	 */
	public boolean addInfo(int ESTATE_ID,String ESTATE_NAME,
			   String ENTERPRISE_NAME,
			   String PHONE,
			   String BUILDING_NO,
			   Date RECEIVE_METERIAL_START_TIME,
			   Date PURPOSE_REGISTER_START_TIME,
			   Date PURPOSE_REGISTER_END_TIME,
			   int IDENTIFICATION_ID,
			   String RECEIVE_METERIAL_ADDRESS,
			   Date LOTTERY_TIME,
			   Date SELECT_HOUSE_TIME,
			   String INFO_DESCRIPTION,
			   Date RECEIVE_METERIAL_END_TIME,
			   int HOUSE_AMOUNT);
	
	/**
	 * 根据主键修改房源信息
	 * @param 房源id 楼盘名称,开发企业,电话,预（现）售楼栋号,现场接受资料时间,意向登记开始时间,意向登记结束时间,预（现）售证号,现场接受资料地点,摇号开始时间,摇号结束时间,选房开始时间,选房结束时间
	 * @return 是否操作成功
	 */
	public boolean verifyInfo(int ESTATE_ID,
						      String ESTATE_NAME,
							  String ENTERPRISE_NAME,
							  String PHONE,
							  String BUILDING_NO,
							  Date RECEIVE_METERIAL_START_TIME,
							  Date PURPOSE_REGISTER_START_TIME,
							  Date PURPOSE_REGISTER_END_TIME,
							  int IDENTIFICATION_ID,
							  String RECEIVE_METERIAL_ADDRESS,
							  Date LOTTERY_TIME,
							  Date SELECT_HOUSE_TIME,
							  String INFO_DESCRIPTION,
							  Date RECEIVE_METERIAL_END_TIME,
							  int HOUSE_AMOUNT);
	
	/**
	 * 根据预（现）售楼栋号删除房源信息
	 * 
	 * @return 是否操作成功
	 */
	public boolean deleteInfo(String BUILDING_NO);
	
	/**
	 * 根据预（现）售证号删除房源信息
	 * 
	 * @return 是否操作成功
	 */
	public boolean deleteInfo(int IDENTIFICATION_ID);
	
	
	/**
	 * 根据房屋栋号查询房屋
	 * @param 房屋的栋号
	 * @return 符合资格的房源信息
	 */
	public HouseSource selectInfo(String BUILDING_NO);
	
	
	/**
	 * 根据预（现）售证号查询房屋
	 * @param IDENTIFICATION_ID预（现）售证号
	 * @return 符合资格的房源信息
	 */
	public HouseSource selectInfo(int ESTATE_ID);
		
	
	/**
	 *查询所有的房屋资源信息
	 * @return 房屋资源的集合
	 */
	public List<HouseSource> selectInfoAll( );
	
	/**
	 * 根据楼盘ID修改摇号时间
	 */
	public boolean verifyRockTime(int ESTATE_ID, Date date);
	
	/**
	 * 根据楼盘ID修改选房时间
	 */
	public boolean verifySelectTime(int ESTATE_ID, Date date);
	
	/**
	 * 获取房源信息数量
	 */
	public int getCount();
}
