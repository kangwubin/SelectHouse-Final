package entry;

import java.sql.Date;

/**
 * 购买用户信息
 * @author 
 *
 */
public class Purchaser {
	private int PURCHASER_ID; //交易编号
	private int ROCKNUMBER;//抽奖序号
	private String REALNAME;//真实姓名
	private String CARDTYPE;//证件类型
	private String CARDCODE;//证件号码
	private String MOBILEPHONE;//手机号码
	private String PURCHASETYPE;//购置类型(购置类型：刚需or普通类型)
	private String PASSWORD;//登录密码
	private int ISMARGIN;//是否缴纳保证金
	private String VERIFYSTATUS;//审核状态，未审核、审核未通过、审核通过
	private String REQUESTSTATUS;//请求状态，正常或撤销
	private int ESTATE_ID;//楼盘ID
	private Date REGISTRATIONTIME;//提交时间
	private String SELECT_HOUSE_RESULT;//选房结果
	public int getPURCHASER_ID() {
		return PURCHASER_ID;
	}
	public void setPURCHASER_ID(int pURCHASER_ID) {
		PURCHASER_ID = pURCHASER_ID;
	}
	public int getROCKNUMBER() {
		return ROCKNUMBER;
	}
	public void setROCKNUMBER(int rOCKNUMBER) {
		ROCKNUMBER = rOCKNUMBER;
	}
	public String getREALNAME() {
		return REALNAME;
	}
	public void setREALNAME(String rEALNAME) {
		REALNAME = rEALNAME;
	}
	public String getCARDTYPE() {
		return CARDTYPE;
	}
	public void setCARDTYPE(String cARDTYPE) {
		CARDTYPE = cARDTYPE;
	}
	public String getCARDCODE() {
		return CARDCODE;
	}
	public void setCARDCODE(String cARDCODE) {
		CARDCODE = cARDCODE;
	}
	public String getMOBILEPHONE() {
		return MOBILEPHONE;
	}
	public void setMOBILEPHONE(String mOBILEPHONE) {
		MOBILEPHONE = mOBILEPHONE;
	}
	public String getPURCHASETYPE() {
		return PURCHASETYPE;
	}
	public void setPURCHASETYPE(String pURCHASETYPE) {
		PURCHASETYPE = pURCHASETYPE;
	}
	public String getPASSWORD() {
		return PASSWORD;
	}
	public void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public int getISMARGIN() {
		return ISMARGIN;
	}
	public void setISMARGIN(int iSMARGIN) {
		ISMARGIN = iSMARGIN;
	}
	public String getVERIFYSTATUS() {
		return VERIFYSTATUS;
	}
	public void setVERIFYSTATUS(String vERIFYSTATUS) {
		VERIFYSTATUS = vERIFYSTATUS;
	}
	public String getREQUESTSTATUS() {
		return REQUESTSTATUS;
	}
	public void setREQUESTSTATUS(String rEQUESTSTATUS) {
		REQUESTSTATUS = rEQUESTSTATUS;
	}
	public int getESTATE_ID() {
		return ESTATE_ID;
	}
	public void setESTATE_ID(int eSTATE_ID) {
		ESTATE_ID = eSTATE_ID;
	}
	public Date getREGISTRATIONTIME() {
		return REGISTRATIONTIME;
	}
	public void setREGISTRATIONTIME(Date rEGISTRATIONTIME) {
		REGISTRATIONTIME = rEGISTRATIONTIME;
	}
	public String getSELECT_HOUSE_RESULT() {
		return SELECT_HOUSE_RESULT;
	}
	public void setSELECT_HOUSE_RESULT(String sELECT_HOUSE_RESULT) {
		SELECT_HOUSE_RESULT = sELECT_HOUSE_RESULT;
	}
	@Override
	public String toString() {
		return "Purchaser [PURCHASER_ID=" + PURCHASER_ID + ", ROCKNUMBER=" + ROCKNUMBER + ", REALNAME=" + REALNAME
				+ ", CARDTYPE=" + CARDTYPE + ", CARDCODE=" + CARDCODE + ", MOBILEPHONE=" + MOBILEPHONE
				+ ", PURCHASETYPE=" + PURCHASETYPE + ", PASSWORD=" + PASSWORD + ", ISMARGIN=" + ISMARGIN
				+ ", VERIFYSTATUS=" + VERIFYSTATUS + ", REQUESTSTATUS=" + REQUESTSTATUS + ", ESTATE_ID=" + ESTATE_ID
				+ ", REGISTRATIONTIME=" + REGISTRATIONTIME + ", SELECT_HOUSE_RESULT=" + SELECT_HOUSE_RESULT + "]";
	}
	
}
