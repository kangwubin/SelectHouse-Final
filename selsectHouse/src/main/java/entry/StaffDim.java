package entry;

public class StaffDim {
	private int EMPLOYEE_ID; //员工工号
	private String EMPLOYEE_NAME;//员工姓名
	private String EMPLOYEE_PASSWORD;//员工登录密码
	
	
	public StaffDim() {}
	public StaffDim(int eMPLOYEE_ID, String eMPLOYEE_NAME, String eMPLOYEE_PASSWORD) {

		EMPLOYEE_ID = eMPLOYEE_ID;
		EMPLOYEE_NAME = eMPLOYEE_NAME;
		EMPLOYEE_PASSWORD = eMPLOYEE_PASSWORD;
	}
	public int getEMPLOYEE_ID() {
		return EMPLOYEE_ID;
	}
	public void setEMPLOYEE_ID(int eMPLOYEE_ID) {
		EMPLOYEE_ID = eMPLOYEE_ID;
	}
	public String getEMPLOYEE_NAME() {
		return EMPLOYEE_NAME;
	}
	public void setEMPLOYEE_NAME(String eMPLOYEE_NAME) {
		if(eMPLOYEE_NAME==null) {
			EMPLOYEE_NAME="%%";
		}else
		EMPLOYEE_NAME = "%"+eMPLOYEE_NAME+"%";
	}
	public String getEMPLOYEE_PASSWORD() {
		return EMPLOYEE_PASSWORD;
	}
	public void setEMPLOYEE_PASSWORD(String eMPLOYEE_PASSWORD) {
		if(EMPLOYEE_PASSWORD==null) {
			
			EMPLOYEE_PASSWORD="%%";
		}else
		EMPLOYEE_PASSWORD = "%"+eMPLOYEE_PASSWORD+"%";
	}
	@Override
	public String toString() {
		return "StaffDim [EMPLOYEE_ID=" + EMPLOYEE_ID + ", EMPLOYEE_NAME=" + EMPLOYEE_NAME + ", EMPLOYEE_PASSWORD="
				+ EMPLOYEE_PASSWORD + "]";
	}
	
	
}
