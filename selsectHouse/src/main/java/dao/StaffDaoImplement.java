package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import entry.Staff;
import entry.StaffDim;
import util.DBConnector;

public class StaffDaoImplement implements StaffDao {
	

	DBConnector dbConnection=new DBConnector();
	
	@Override
	public boolean addInfo(int EMPLOYEE_ID, String EMPLOYEE_NAME, String EMPLOYEE_PASSWORD, int PRIVILEGE) {
		int row=0;
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = dbConnection.connect();
			// 预编译sql语句
			String sql = "INSERT INTO `houselottery`.`tb_employees_info` (" + 
					"  `EMPLOYEE_ID`," + 
					"  `EMPLOYEE_NAME`," + 
					"  `EMPLOYEE_PASSWORD`," + 
					"  `PRIVILEGE`" + 
					")" + 
					"VALUES" + 
					"  (?,?,?,?);";
			statement = connection.prepareStatement(sql);
			statement.setInt(1, EMPLOYEE_ID);
			statement.setString(2, EMPLOYEE_NAME);
			statement.setString(3, EMPLOYEE_PASSWORD);
			statement.setInt(4, PRIVILEGE);

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
		if(row>0) {
			return true;
		}else
		return false;
	}

	@Override
	public boolean deletInfo(int EMPLOYEE_ID) {
		
		int row=0;
		Connection connection=null;
		PreparedStatement statement=null;
		connection=dbConnection.connect();
		
		try {
			String sql="DELETE FROM `houselottery`.`tb_employees_info` WHERE `EMPLOYEE_ID` = "+EMPLOYEE_ID+";";
			statement=connection.prepareStatement(sql);
			row=statement.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(row>0) {
			return true;
		}else	return false;
	}

	

	@Override
	public List<Staff> selectAllInfo() {
		List<Staff> staffs=new ArrayList<>();
		Connection connection = null;
		PreparedStatement statement=null;
		ResultSet resultSet=null;
		
		connection=dbConnection.connect();
		
		String sql="SELECT * FROM tb_employees_info ;";
		try {
			statement=connection.prepareStatement(sql);
			
			
			resultSet=statement.executeQuery();
			while(resultSet.next()) {
			      Staff staff=new Staff();
			      staff.setEMPLOYEE_ID(resultSet.getInt(1));
			      staff.setEMPLOYEE_NAME(resultSet.getString(2));
			      staff.setEMPLOYEE_PASSWORD(resultSet.getString(3));
			      staff.setPRIVILEGE(resultSet.getInt(4));
			      staffs.add(staff);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//statement=connection.createStatement();
		//statement.
		
		
		return staffs;
	}

	@Override
	public Staff selectInfo(StaffDim staffDim) {
		
		Connection connection = null;
		PreparedStatement statement=null;
		ResultSet resultSet=null;
	
		Staff staff=new Staff();
		
		connection=dbConnection.connect();
		
		String sql="SELECT * FROM tb_employees_info WHERE EMPLOYEE_ID="+staffDim.getEMPLOYEE_ID()+" AND	EMPLOYEE_NAME LIKE '"+staffDim.getEMPLOYEE_NAME()+"' AND EMPLOYEE_PASSWORD LIKE '"+staffDim.getEMPLOYEE_PASSWORD()+"'";
		try {
			statement=connection.prepareStatement(sql);
			
		
			resultSet=statement.executeQuery();	
			//System.out.println("sql语句："+sql);
			while(resultSet.next()) {
				staff.setEMPLOYEE_ID(resultSet.getInt(1));
				staff.setEMPLOYEE_NAME(resultSet.getString(2));
				staff.setEMPLOYEE_PASSWORD(resultSet.getString(3));
	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//statement=connection.createStatement();
		//statement.
		
		
		return staff;
	}

	@Override
	public boolean verifyInfo(int EMPLOYEE_ID,String EMPLOYEE_NAME,String EMPLOYEE_PASSWORD,int PRIVILEGE) {
		int row=0;
		Connection connection=null;
		PreparedStatement statement=null;
		connection=dbConnection.connect();
		
		try {
			String sql="UPDATE `houselottery`.`tb_employees_info` SET `EMPLOYEE_NAME` = ?, `EMPLOYEE_PASSWORD` = ?, `PRIVILEGE` = ? WHERE `EMPLOYEE_ID` = ?;" ;
			statement=connection.prepareStatement(sql);
			statement.setString(1, EMPLOYEE_NAME);
			statement.setString(2, EMPLOYEE_PASSWORD);
			statement.setInt(3, PRIVILEGE);
			statement.setInt(4, EMPLOYEE_ID);
			row=statement.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(row>0) {
			return true;
		}else	return false;
	}

	@Override
	public Staff login(int employee_id, String password) {

		Connection connection = null;
		PreparedStatement statement=null;
		ResultSet resultSet=null;
	
		Staff staff=new Staff();
		int row=0;
		connection=dbConnection.connect();
		
		String sql="SELECT * FROM tb_employees_info WHERE EMPLOYEE_ID="+employee_id+" AND EMPLOYEE_PASSWORD='"+password+"'";
		System.out.println(sql);
		try {
			statement=connection.prepareStatement(sql);
			
			
			resultSet=statement.executeQuery();
			while(resultSet.next()) {
	
			      staff.setEMPLOYEE_ID(resultSet.getInt(1));
			      staff.setEMPLOYEE_NAME(resultSet.getString(2));
			      staff.setEMPLOYEE_PASSWORD(resultSet.getString(3));
			      staff.setPRIVILEGE(resultSet.getInt(4));
							
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			return staff;
		
	}
	
//	public static void main(String[] args) {
//		StaffDao staffDao=new StaffDaoImplement();
//		查询成功
//		List<Staff> staffs=staffDao.selectAllInfo();
//		添加成功
//		staffDao.addInfo(8, "adfad", "123456", 2);
//		删除成功staffDao.deletInfo(1);
//		修改你成功boolean istrue=staffDao.verifyInfo(5, "二狗子", "1234", 2);
//		StaffDim staffDim=new StaffDim();
//		staffDim.setEMPLOYEE_ID(4);
//		staffDim.setEMPLOYEE_NAME("哈");
//		staffDim.setEMPLOYEE_PASSWORD(null);
//		System.out.println(staffDim.getEMPLOYEE_ID());
//		System.out.println(staffDim.getEMPLOYEE_NAME());
//		System.out.println(staffDim.getEMPLOYEE_PASSWORD());
//		
//		
//		Staff staff=staffDao.selectInfo(staffDim);
//		System.out.println(staff.toString());
//	}
	

}
