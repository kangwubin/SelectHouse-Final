package entry;

/**
 * 员工信息实体类
 * @author 
 *
 */
public class Staff {

	private int EMPLOYEE_ID; //员工工号
	private String EMPLOYEE_NAME;//员工姓名
	private String EMPLOYEE_PASSWORD;//员工登录密码
	private int   PRIVILEGE;//员工权限
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
		EMPLOYEE_NAME = eMPLOYEE_NAME;
	}
	public String getEMPLOYEE_PASSWORD() {
		return EMPLOYEE_PASSWORD;
	}
	public void setEMPLOYEE_PASSWORD(String eMPLOYEE_PASSWORD) {
		EMPLOYEE_PASSWORD = eMPLOYEE_PASSWORD;
	}
	public int getPRIVILEGE() {
		return PRIVILEGE;
	}
	public void setPRIVILEGE(int pRIVILEGE) {
		PRIVILEGE = pRIVILEGE;
	}
	@Override
	public String toString() {
		return "Staff [EMPLOYEE_ID=" + EMPLOYEE_ID + ", EMPLOYEE_NAME=" + EMPLOYEE_NAME + ", EMPLOYEE_PASSWORD="
				+ EMPLOYEE_PASSWORD + ", PRIVILEGE=" + PRIVILEGE + "]";
	}
	public Staff(int eMPLOYEE_ID, String eMPLOYEE_NAME, String eMPLOYEE_PASSWORD, int pRIVILEGE) {
		super();
		EMPLOYEE_ID = eMPLOYEE_ID;
		EMPLOYEE_NAME = eMPLOYEE_NAME;
		EMPLOYEE_PASSWORD = eMPLOYEE_PASSWORD;
		PRIVILEGE = pRIVILEGE;
	}
	public Staff() {}
	
	
}
