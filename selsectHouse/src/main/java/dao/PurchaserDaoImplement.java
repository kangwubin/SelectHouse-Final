package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entry.Purchaser;
import util.DBConnector;

/**
 * PurchaserDao实现类
 * @author 
 *
 */
public class PurchaserDaoImplement implements PurchaserDao {

	//数据库连接
	DBConnector dbConnection = new DBConnector();
	
	/**
	 * 添加信息
	 * 
	 * @return 更新的行数
	 */
	@Override
	public int addInfo(int ROCKNUMBER, String REALNAME, String CARDTYPE, String CARDCODE,
			String MOBILEPHONE, String PURCHASETYPE, String PASSWORD, int ISMARGIN, 
			String VERIFYSTATUS, String REQUESTSTATUS, int ESTATE_ID, Date REGISTRATIONTIME, 
			String SELECT_HOUSE_RESULT) {
		int row = 0;
		
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "insert into tb_house_purchaser_info"
					+ "(ROCKNUMBER, REALNAME, CARDTYPE, CARDCODE, "
					+ "MOBILEPHONE, PURCHASETYPE, PASSWORD, ISMARGIN, VERIFYSTATUS, "
					+ "REQUESTSTATUS, ESTATE_ID, REGISTRATIONTIME, SELECT_HOUSE_RESULT) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?);";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, ROCKNUMBER);
			statement.setString(2, REALNAME);
			statement.setString(3, CARDTYPE);
			statement.setString(4, CARDCODE);
			statement.setString(5, MOBILEPHONE);
			statement.setString(6, PURCHASETYPE);
			statement.setString(7, PASSWORD);
			statement.setInt(8, ISMARGIN);
			statement.setString(9, VERIFYSTATUS);
			statement.setString(10, REQUESTSTATUS);
			statement.setInt(11, ESTATE_ID);
			statement.setDate(12, REGISTRATIONTIME);
			statement.setString(13, SELECT_HOUSE_RESULT);

			row = statement.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return row;
	}
	
	/**
	 * 删除信息
	 */
	@Override
	public int deleteInfo(int purchaserid) {
		int row = 0;
		
		Connection connection = null;
		Statement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "DELETE FROM tb_house_purchaser_info WHERE PURCHASER_ID = " + purchaserid;
			statement = connection.createStatement();
			row = statement.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		return row;
	}
	
	/**
	 * 查找信息
	 */
	@Override
	public List<Purchaser> selectInfo() {
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		List<Purchaser> list = new ArrayList<Purchaser>();
		
		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "select * from tb_house_purchaser_info;";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			
			//迭代list
			while (resultSet.next()) {
				Purchaser purchaser = new Purchaser();
				
				purchaser.setPURCHASER_ID(resultSet.getInt("PURCHASER_ID"));
				purchaser.setROCKNUMBER(resultSet.getInt("ROCKNUMBER"));
				purchaser.setREALNAME(resultSet.getString("REALNAME"));
				purchaser.setCARDTYPE(resultSet.getString("CARDTYPE"));
				purchaser.setCARDCODE(resultSet.getString("CARDCODE"));
				purchaser.setMOBILEPHONE(resultSet.getString("MOBILEPHONE"));
				purchaser.setPURCHASETYPE(resultSet.getString("PURCHASETYPE"));
				purchaser.setPASSWORD(resultSet.getString("PASSWORD"));
				purchaser.setISMARGIN(resultSet.getInt("ISMARGIN"));
				purchaser.setVERIFYSTATUS(resultSet.getString("VERIFYSTATUS"));
				purchaser.setREQUESTSTATUS(resultSet.getString("REQUESTSTATUS"));
				purchaser.setESTATE_ID(resultSet.getInt("ESTATE_ID"));
				purchaser.setREGISTRATIONTIME(resultSet.getDate("REGISTRATIONTIME"));
				purchaser.setSELECT_HOUSE_RESULT(resultSet.getString("SELECT_HOUSE_RESULT"));
				
				list.add(purchaser);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	
	/**
	 * 修改信息
	 */
	@Override
	public int verifyInfo(int PURCHASERID, int ROCKNUMBER, String REALNAME, 
			String CARDTYPE, String CARDCODE,
			String MOBILEPHONE, String PURCHASETYPE, String PASSWORD, 
			int ISMARGIN, String VERIFYSTATUS, 
			String REQUESTSTATUS, int ESTATE_ID,
			Date REGISTRATIONTIME, String SELECT_HOUSE_RESULT) {
		int row = 0;
		
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "update tb_house_purchaser_info set "+ 
					"ROCKNUMBER=" + ROCKNUMBER + 
					", REALNAME='" + REALNAME +
					"', CARDTYPE='" + CARDTYPE + 
					"', CARDCODE='" + CARDCODE +
					"', MOBILEPHONE='" + MOBILEPHONE + 
					"', PURCHASETYPE='" + PURCHASETYPE +
					"', PASSWORD='" + PASSWORD + 
					"', ISMARGIN=" + ISMARGIN +
					", VERIFYSTATUS='" + VERIFYSTATUS + 
					"', REQUESTSTATUS='" + REQUESTSTATUS +
					"', ESTATE_ID=" + ESTATE_ID +
					", SELECT_HOUSE_RESULT='" + SELECT_HOUSE_RESULT + 
					"', REGISTRATIONTIME= ? " +
					" where PURCHASER_ID = " + PURCHASERID;
			statement = connection.prepareStatement(sql);
			statement.setDate(1, REGISTRATIONTIME);
			row = statement.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return row;
	}
	
	@Override
	public int getSum() {
		int sum = 0;
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "SELECT COUNT(*) FROM tb_house_purchaser_info;";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			if(resultSet.next())
				sum = resultSet.getInt("1");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return sum;
	}

	@Override
	public Purchaser login(String cardcode,String password) {
			String s="SELECT * FROM tb_house_purchaser_info WHERE CARDCODE='' AND PASSWORD=''";
			
			
			
			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
			
			Purchaser purchaser = new Purchaser();
			
			try {
				connection = dbConnection.connect();
				// 预编译sql语句
				String sql = "SELECT * FROM tb_house_purchaser_info WHERE CARDCODE='"+cardcode+"' AND PASSWORD='"+password+"'";
				statement = connection.createStatement();
				resultSet = statement.executeQuery(sql);
				System.out.println(sql);
				//迭代list
				while (resultSet.next()) {
					purchaser.setPURCHASER_ID(resultSet.getInt("PURCHASER_ID"));
					purchaser.setROCKNUMBER(resultSet.getInt("ROCKNUMBER"));
					purchaser.setREALNAME(resultSet.getString("REALNAME"));
					purchaser.setCARDTYPE(resultSet.getString("CARDTYPE"));
					purchaser.setCARDCODE(resultSet.getString("CARDCODE"));
					purchaser.setMOBILEPHONE(resultSet.getString("MOBILEPHONE"));
					purchaser.setPURCHASETYPE(resultSet.getString("PURCHASETYPE"));
					purchaser.setPASSWORD(resultSet.getString("PASSWORD"));
					purchaser.setISMARGIN(resultSet.getInt("ISMARGIN"));
					purchaser.setVERIFYSTATUS(resultSet.getString("VERIFYSTATUS"));
					purchaser.setREQUESTSTATUS(resultSet.getString("REQUESTSTATUS"));
					purchaser.setESTATE_ID(resultSet.getInt("ESTATE_ID"));
					purchaser.setREGISTRATIONTIME(resultSet.getDate("REGISTRATIONTIME"));
					purchaser.setSELECT_HOUSE_RESULT(resultSet.getString("SELECT_HOUSE_RESULT"));
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if (connection != null) {
						connection.close();
					}
					if (statement != null) {
						statement.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return purchaser;
		
	}

	@Override
	public boolean login(String password) {
		int row = 0;
		
		Connection connection = null;
		Statement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "DELETE FROM tb_house_purchaser_info WHERE PASSWORD = " + password;
			statement = connection.createStatement();
			row = statement.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(row>0) {
			return true;
		}else
		return false;
	}

	@Override
	public Purchaser selectInfoByid(int PURCHASER_ID) {

		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;
		
		Purchaser purchaser = new Purchaser();
		
		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "SELECT * FROM tb_house_purchaser_info WHERE PURCHASER_ID="+PURCHASER_ID+"";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			System.out.println(sql);
			//迭代list
			while (resultSet.next()) {
				purchaser.setPURCHASER_ID(resultSet.getInt("PURCHASER_ID"));
				purchaser.setROCKNUMBER(resultSet.getInt("ROCKNUMBER"));
				purchaser.setREALNAME(resultSet.getString("REALNAME"));
				purchaser.setCARDTYPE(resultSet.getString("CARDTYPE"));
				purchaser.setCARDCODE(resultSet.getString("CARDCODE"));
				purchaser.setMOBILEPHONE(resultSet.getString("MOBILEPHONE"));
				purchaser.setPURCHASETYPE(resultSet.getString("PURCHASETYPE"));
				purchaser.setPASSWORD(resultSet.getString("PASSWORD"));
				purchaser.setISMARGIN(resultSet.getInt("ISMARGIN"));
				purchaser.setVERIFYSTATUS(resultSet.getString("VERIFYSTATUS"));
				purchaser.setREQUESTSTATUS(resultSet.getString("REQUESTSTATUS"));
				purchaser.setESTATE_ID(resultSet.getInt("ESTATE_ID"));
				purchaser.setREGISTRATIONTIME(resultSet.getDate("REGISTRATIONTIME"));
				purchaser.setSELECT_HOUSE_RESULT(resultSet.getString("SELECT_HOUSE_RESULT"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return purchaser;
	}

	@Override
	public boolean verifyInfo(int PURCHASER_ID, String ESTATE_ID) {
int row = 0;
		
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "UPDATE\r" + 
					"  `houselottery`.`tb_house_purchaser_info`" + 
					"SET" +
					"  `ESTATE_ID` = ?" + 
					"WHERE `PURCHASER_ID` = ?;";
			
			statement = connection.prepareStatement(sql);
			statement.setInt(1, PURCHASER_ID);
			statement.setString(2, ESTATE_ID);
			row = statement.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(row>0)
		{
			return true;
		}else
			return false;

	}


}
