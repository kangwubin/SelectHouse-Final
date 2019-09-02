package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entry.HouseSource;
import util.DBConnector;
import util.Test;
import util.Transform;

public class HouseSourceDaoImplement implements HouseSourceDao {

	DBConnector dbConnection = new DBConnector();

	@Override
	public boolean addInfo(String ESTATE_NAME, String ENTERPRISE_NAME, String PHONE, String BUILDING_NO,
			Date RECEIVE_METERIAL_START_TIME, Date PURPOSE_REGISTER_START_TIME, Date PURPOSE_REGISTER_END_TIME,
			int IDENTIFICATION_ID, String RECEIVE_METERIAL_ADDRESS, Date LOTTERY_TIME, Date SELECT_HOUSE_TIME,
			String INFO_DESCRIPTION, Date RECEIVE_METERIAL_END_TIME, int HOUSE_AMOUNT) {

		int row = 0;
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "INSERT INTO `houselottery`.`tb_real_estate_info` "
					+ "( ESTATE_NAME,  ENTERPRISE_NAME,  PHONE,  BUILDING_NO,"
					+ "	 RECEIVE_METERIAL_START_TIME,  PURPOSE_REGISTER_START_TIME,  " + "PURPOSE_REGISTER_END_TIME,"
					+ "	 IDENTIFICATION_ID,  RECEIVE_METERIAL_ADDRESS,  LOTTERY_TIME, "
					+ "	 SELECT_HOUSE_TIME,  INFO_DESCRIPTION, RECEIVE_METERIAL_END_TIME, HOUSE_AMOUNT) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
			statement = connection.prepareStatement(sql);
			statement.setString(1, ESTATE_NAME);
			statement.setString(2, ENTERPRISE_NAME);
			statement.setString(3, PHONE);
			statement.setString(4, BUILDING_NO);
			statement.setDate(5, RECEIVE_METERIAL_START_TIME);
			statement.setDate(6, PURPOSE_REGISTER_START_TIME);
			statement.setDate(7, PURPOSE_REGISTER_END_TIME);
			statement.setInt(8, IDENTIFICATION_ID);
			statement.setString(9, RECEIVE_METERIAL_ADDRESS);
			statement.setDate(10, LOTTERY_TIME);
			statement.setDate(11, SELECT_HOUSE_TIME);
			statement.setString(12, INFO_DESCRIPTION);
			statement.setDate(13, RECEIVE_METERIAL_END_TIME);
			statement.setInt(14, HOUSE_AMOUNT);

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
		if (row > 0) {
			return true;
		} else
			return false;
	}

	@Override
	public boolean verifyInfo(int ESTATE_ID, String ESTATE_NAME, String ENTERPRISE_NAME, String PHONE,
			String BUILDING_NO, Date RECEIVE_METERIAL_START_TIME, Date PURPOSE_REGISTER_START_TIME,
			Date PURPOSE_REGISTER_END_TIME, int IDENTIFICATION_ID, String RECEIVE_METERIAL_ADDRESS, Date LOTTERY_TIME,
			Date SELECT_HOUSE_TIME, String INFO_DESCRIPTION, Date RECEIVE_METERIAL_END_TIME, int HOUSE_AMOUNT) {
		int row = 0;
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "UPDATE  `houselottery`.`tb_real_estate_info` SET" + "  ESTATE_ID = ?," + "  ESTATE_NAME = ?,"
					+ "  ENTERPRISE_NAME = ?," + "  PHONE = ?," + "  BUILDING_NO = ?,"
					+ "  RECEIVE_METERIAL_START_TIME = ?," + "  PURPOSE_REGISTER_START_TIME = ?,"
					+ "  PURPOSE_REGISTER_END_TIME = ?," + "  IDENTIFICATION_ID = ?," + "RECEIVE_METERIAL_ADDRESS = ?,"
					+ "  LOTTERY_TIME = ?," + "  SELECT_HOUSE_TIME = ?," + "  INFO_DESCRIPTION = ?, "
					+ " RECEIVE_METERIAL_END_TIME = ?, HOUSE_AMOUNT = ? " + "WHERE ESTATE_ID = ?";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, ESTATE_ID);
			statement.setString(2, ENTERPRISE_NAME);
			statement.setString(3, ENTERPRISE_NAME);
			statement.setString(4, PHONE);
			statement.setString(5, BUILDING_NO);
			statement.setDate(6, RECEIVE_METERIAL_START_TIME);
			statement.setDate(7, PURPOSE_REGISTER_START_TIME);
			statement.setDate(8, PURPOSE_REGISTER_END_TIME);
			statement.setInt(9, IDENTIFICATION_ID);
			statement.setString(10, RECEIVE_METERIAL_ADDRESS);
			statement.setDate(11, LOTTERY_TIME);
			statement.setDate(12, SELECT_HOUSE_TIME);
			statement.setString(13, INFO_DESCRIPTION);
			statement.setDate(14, RECEIVE_METERIAL_END_TIME);
			statement.setInt(15, HOUSE_AMOUNT);
			statement.setInt(16, ESTATE_ID);
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
		if (row > 0) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteInfo(String BUILDING_NO) {

		int row = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		connection = dbConnection.connect();

		try {
			String sql = "DELETE FROM  `houselottery`.`tb_real_estate_info` WHERE `BUILDING_NO` = '" + BUILDING_NO
					+ "';";
			statement = connection.prepareStatement(sql);
			row = statement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (row > 0) {
			return true;
		} else
			return false;
	}

	@Override
	public List<HouseSource> selectInfoAll() {
		List<HouseSource> houseSources = new ArrayList<>();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		connection = dbConnection.connect();

		String sql = "SELECT * FROM tb_real_estate_info";
		try {
			statement = connection.prepareStatement(sql);

			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				HouseSource houseSource = new HouseSource();

				houseSource.setEATATE_ID(resultSet.getInt(1));
				houseSource.setEATATE_NAME(resultSet.getString(2));
				houseSource.setENTERPRISE_NAME(resultSet.getString(3));
				houseSource.setPHONE(resultSet.getString(4));
				houseSource.setBUILDING_NO(resultSet.getString(5));
				houseSource.setRECEIVE_METERIAL_START_TIME(resultSet.getDate(6));
				houseSource.setPURPOSE_REGISTER_START_TIME(resultSet.getDate(7));
				houseSource.setPURPOSE_REGISTER_END_TIME(resultSet.getDate(8));
				houseSource.setIDENTIFICATION_ID(resultSet.getInt(9));
				houseSource.setRECEIVE_METERIAL_ADDRESS(resultSet.getString(10));
				houseSource.setLOTIERY_TIME(resultSet.getDate(11));
				houseSource.setSELECT_HOUSE_TIME(resultSet.getDate(12));
				houseSource.setINFO_DESCRIPTION(resultSet.getString(13));
				houseSource.setRECEIVE_METERIAL_END_TIME(resultSet.getDate(14));
				houseSource.setHOUSE_AMOUNT(resultSet.getInt(15));
				houseSources.add(houseSource);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return houseSources;
	}

	@Override
	public boolean deleteInfo(int IDENTIFICATION_ID) {
		int row = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		connection = dbConnection.connect();

		try {
			String sql = "DELETE FROM  `houselottery`.`tb_real_estate_info` WHERE `IDENTIFICATION_ID` = '"
					+ IDENTIFICATION_ID + "';";
			statement = connection.prepareStatement(sql);
			row = statement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (row > 0) {
			return true;
		} else
			return false;
	}

	@Override
	public HouseSource selectInfo(String BUDING_NO) {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		connection = dbConnection.connect();

		String sql = "SELECT * FROM tb_real_estate_info where BUDING_NO='" + BUDING_NO + "'";
		HouseSource houseSource = new HouseSource();
		try {
			statement = connection.prepareStatement(sql);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {

				houseSource.setEATATE_ID(resultSet.getInt(1));
				houseSource.setEATATE_NAME(resultSet.getString(2));
				houseSource.setENTERPRISE_NAME(resultSet.getString(3));
				houseSource.setPHONE(resultSet.getString(4));
				houseSource.setBUILDING_NO(resultSet.getString(5));
				houseSource.setRECEIVE_METERIAL_START_TIME(resultSet.getDate(6));
				houseSource.setPURPOSE_REGISTER_START_TIME(resultSet.getDate(7));
				houseSource.setPURPOSE_REGISTER_END_TIME(resultSet.getDate(8));
				houseSource.setIDENTIFICATION_ID(resultSet.getInt(9));
				houseSource.setRECEIVE_METERIAL_ADDRESS(resultSet.getString(10));
				houseSource.setLOTIERY_TIME(resultSet.getDate(11));
				houseSource.setSELECT_HOUSE_TIME(resultSet.getDate(12));
				houseSource.setINFO_DESCRIPTION(resultSet.getString(13));
				houseSource.setRECEIVE_METERIAL_END_TIME(resultSet.getDate(14));
				houseSource.setHOUSE_AMOUNT(resultSet.getInt(15));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// statement=connection.createStatement();
		// statement.

		return houseSource;

	}

	@Override
	public HouseSource selectInfo(int ESTATE_ID) {

		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;

		connection = dbConnection.connect();
		HouseSource houseSource = new HouseSource();

		String sql = "SELECT * FROM tb_real_estate_info WHERE ESTATE_ID=" + ESTATE_ID + "";
		try {
			statement = connection.prepareStatement(sql);

			resultSet = statement.executeQuery();
			while (resultSet.next()) {

				houseSource.setEATATE_ID(resultSet.getInt(1));
				houseSource.setEATATE_NAME(resultSet.getString(2));
				houseSource.setENTERPRISE_NAME(resultSet.getString(3));
				houseSource.setPHONE(resultSet.getString(4));
				houseSource.setBUILDING_NO(resultSet.getString(5));
				houseSource.setRECEIVE_METERIAL_START_TIME(resultSet.getDate(6));
				houseSource.setPURPOSE_REGISTER_START_TIME(resultSet.getDate(7));
				houseSource.setPURPOSE_REGISTER_END_TIME(resultSet.getDate(8));
				houseSource.setIDENTIFICATION_ID(resultSet.getInt(9));
				houseSource.setRECEIVE_METERIAL_ADDRESS(resultSet.getString(10));
				houseSource.setLOTIERY_TIME(resultSet.getDate(11));
				houseSource.setSELECT_HOUSE_TIME(resultSet.getDate(12));
				houseSource.setINFO_DESCRIPTION(resultSet.getString(13));
				houseSource.setRECEIVE_METERIAL_END_TIME(resultSet.getDate(14));
				houseSource.setHOUSE_AMOUNT(resultSet.getInt(15));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// statement=connection.createStatement();
		// statement

		return houseSource;

	}

	@Override
	public boolean verifyRockTime(int ESTATE_ID, Date date) {
		int row = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		connection = dbConnection.connect();

		try {
			String sql = "UPDATE `tb_real_estate_info` SET LOTTERY_TIME=? WHERE ESTATE_ID=" + ESTATE_ID + ";";
			statement = connection.prepareStatement(sql);
			statement.setDate(1, date);
			row = statement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (row > 0) {
			return true;
		} else
			return false;
	}

	@Override
	public boolean verifySelectTime(int ESTATE_ID, Date date) {
		int row = 0;
		Connection connection = null;
		PreparedStatement statement = null;
		connection = dbConnection.connect();

		try {
			String sql = "UPDATE `tb_real_estate_info` SET SELECT_HOUSE_TIME=? WHERE ESTATE_ID=" + ESTATE_ID + ";";
			statement = connection.prepareStatement(sql);
			statement.setDate(1, date);
			row = statement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		if (row > 0) {
			return true;
		} else
			return false;
	}

	@Override
	public int getCount() {
		int sum = 0;
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "SELECT COUNT(*) FROM tb_real_estate_info;";
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			if(resultSet.next())
				sum = resultSet.getInt("count(*)");
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
	public boolean addInfo(int ESTATE_ID, String ESTATE_NAME, String ENTERPRISE_NAME, String PHONE, String BUILDING_NO,
			Date RECEIVE_METERIAL_START_TIME, Date PURPOSE_REGISTER_START_TIME, Date PURPOSE_REGISTER_END_TIME,
			int IDENTIFICATION_ID, String RECEIVE_METERIAL_ADDRESS, Date LOTTERY_TIME, Date SELECT_HOUSE_TIME,
			String INFO_DESCRIPTION, Date RECEIVE_METERIAL_END_TIME, int HOUSE_AMOUNT) {
		int row = 0;
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "INSERT INTO `houselottery`.`tb_real_estate_info` "
					+ "( ESTATE_ID, ESTATE_NAME,  ENTERPRISE_NAME,  PHONE,  BUILDING_NO,"
					+ "	 RECEIVE_METERIAL_START_TIME,  PURPOSE_REGISTER_START_TIME,  " + "PURPOSE_REGISTER_END_TIME,"
					+ "	 IDENTIFICATION_ID,  RECEIVE_METERIAL_ADDRESS,  LOTTERY_TIME, "
					+ "	 SELECT_HOUSE_TIME,  INFO_DESCRIPTION, RECEIVE_METERIAL_END_TIME, HOUSE_AMOUNT) "
					+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, ESTATE_ID);
			statement.setString(2, ESTATE_NAME);
			statement.setString(3, ENTERPRISE_NAME);
			statement.setString(4, PHONE);
			statement.setString(5, BUILDING_NO);
			statement.setDate(6, RECEIVE_METERIAL_START_TIME);
			statement.setDate(7, PURPOSE_REGISTER_START_TIME);
			statement.setDate(8, PURPOSE_REGISTER_END_TIME);
			statement.setInt(9, IDENTIFICATION_ID);
			statement.setString(10, RECEIVE_METERIAL_ADDRESS);
			statement.setDate(11, LOTTERY_TIME);
			statement.setDate(12, SELECT_HOUSE_TIME);
			statement.setString(13, INFO_DESCRIPTION);
			statement.setDate(14, RECEIVE_METERIAL_END_TIME);
			statement.setInt(15, HOUSE_AMOUNT);

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
		if (row > 0) {
			return true;
		} else
			return false;
	}
	
	public static void main(String[] args) {
		int ESTATE_ID = 30;

		String ESTATE_NAME = "十二号院";
		String ENTERPRISE_NAME = "西安贰号院";
		String PHONE = "12345678901";
		String BUILDING_NO = "01";
		Date RECEIVE_METERIAL_START_TIME = null;
		Date PURPOSE_REGISTER_START_TIME = null;
		Date PURPOSE_REGISTER_END_TIME = null;
		int IDENTIFICATION_ID = 2019001;
		String RECEIVE_METERIAL_ADDRESS = "西安贰号院营销中心";
		Date LOTTERY_TIME = null;
		Date SELECT_HOUSE_TIME = null;
		String INFO_DESCRIPTION = "十二号院描述内容";
		Date RECEIVE_METERIAL_END_TIME = null;
		int HOUSE_AMOUNT = 90;

		System.out.println(new HouseSourceDaoImplement().getCount());
		//System.out.println(new HouseSourceDaoImplement().selectInfo(1));
		//new HouseSourceDaoImplement().verifyInfo(ESTATE_ID, ESTATE_NAME, ENTERPRISE_NAME, PHONE, BUILDING_NO, RECEIVE_METERIAL_START_TIME, PURPOSE_REGISTER_START_TIME, PURPOSE_REGISTER_END_TIME, IDENTIFICATION_ID, RECEIVE_METERIAL_ADDRESS, LOTTERY_TIME, SELECT_HOUSE_TIME, INFO_DESCRIPTION, RECEIVE_METERIAL_END_TIME, HOUSE_AMOUNT);
		//System.out.println(new HouseSourceDaoImplement().selectInfoAll());
		//new HouseSourceDaoImplement().verifySelectTime(10, Transform.StringToDate("2019-7-21"));
	}

}
