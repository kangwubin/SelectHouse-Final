package servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HouseSourceDao;
import dao.HouseSourceDaoImplement;
import entry.HouseSource;
import util.Transform;

/**
 * 销售公告管理 Servlet implementation class SellInfoManage
 */
public class SellInfoManage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HouseSourceDao houseSourceDao = new HouseSourceDaoImplement();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SellInfoManage() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置请求文本编码
		request.setCharacterEncoding("utf-8");
		String operate = request.getParameter("operate");
		/*
		 * 销售公告提交操作
		 */
		if (operate.equals("Salesannouncement")) {
			Salesannouncement(request, response);
		} else if (operate.equals("houseInfoDisplay")) {
			houseInfoDisplay(request, response);
		} else if (operate.equals("issueRockTime")) {
			issueRockTime(request, response);
		} else if (operate.equals("issueSelectHouseTime")) {
			issueSelectHouseTime(request, response);
		} else if (operate.equals("houseInfoList")) {
			houseInfoList(request, response);
		} else if (operate.equals("verifyInfoList")) {
			verifyInfoList(request, response);
		} else if (operate.equals("sellInfoWindow")) {
			sellInfoWindow(request, response);
		} else if (operate.equals("add")) {
			add(request, response);
		}else if (operate.equals("turnTo")) {
			turnTo(request, response);
		}
		else if (operate.equals("pwd")) {
			pwd(request, response);
		}
		else if (operate.equals("user")) {
			user(request, response);
		}
		else if (operate.equals("HouseQuery")) {
			HouseQuery(request, response);
		}
	}

	private void HouseQuery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<HouseSource> houseList = houseSourceDao.selectInfoAll();
		int houseAmount = houseSourceDao.getCount();
		request.setAttribute("HouseSource", houseList);
		request.setAttribute("houseAmount", houseAmount);
		
		try {
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	private void user(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/afterView/manageUser.jsp").forward(request, response);
		
	}

	private void pwd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/afterView/managePwd.jsp").forward(request, response);
	}

	private void turnTo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/afterView/index.jsp").forward(request, response);
		
	}

	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/afterView/manageAddStaff.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	/**
	 * 销售公告发布后台
	 */
	public void Salesannouncement(HttpServletRequest request, HttpServletResponse response) {
		boolean effect = false;
		effect = houseSourceDao.addInfo(
				Integer.parseInt(request.getParameter("ESTATE_ID")),
				request.getParameter("ESTATE_NAME"), request.getParameter("ENTERPRISE_NAME"),
				request.getParameter("PHONE"), request.getParameter("BUILDING_NO"),
				Transform.StringToDate(request.getParameter("RECEIVE_METERIAL_START_TIME")),
				Transform.StringToDate(request.getParameter("PURPOSE_REGISTER_START_TIME")),
				Transform.StringToDate(request.getParameter("PURPOSE_REGISTER_END_TIME")),
				Integer.parseInt(request.getParameter("IDENTIFICATION_ID")),
				request.getParameter("RECEIVE_METERIAL_ADDRESS"),
				null,
				null,
				request.getParameter("PUBLISHU_CONTENT"),
				Transform.StringToDate(request.getParameter("RECEIVE_METERIAL_END_TIME")),
				50);
		if (!effect) {
			houseInfoList(request,response);
		} else {
			houseInfoList(request,response);
		}
	}

	/**
	 * 房源信息显示
	 */
	public void houseInfoDisplay(HttpServletRequest request, HttpServletResponse response) {
		// 调入信息
		// 传入jsp
		// 调用查询的方法
		List<HouseSource> houseList = houseSourceDao.selectInfoAll();
		
		// 添加到request作用域中
		String page = request.getParameter("page");

		Iterator<HouseSource> it = houseList.iterator();
		while (it.hasNext()) {
			HouseSource tmp = it.next();
			long currentTime = System.currentTimeMillis(); //当前时间
			long startTime = tmp.getPURPOSE_REGISTER_START_TIME().getTime();
			long endTime = tmp.getPURPOSE_REGISTER_END_TIME().getTime();
			if (page.equals("1")) { // 全部
				
			} else if (page.equals("2")) { // 正在登记
				if(currentTime<startTime || currentTime>endTime) { //如果当前时间不在在登记时间内
					it.remove();
				}
			} else if (page.equals("3")) { // 暂未开始
				if(currentTime>=startTime) { //如果当前时间不在在登记时间内
					it.remove();
				}
			} else if (page.equals("4")) { // 登记结束
				if(currentTime<=endTime) { //如果当前时间不在在登记时间内
					it.remove();
				}
			}
		}
		request.setAttribute("houseList", houseList);
		if (page.equals("1")) { // 全部
			try {
				request.getRequestDispatcher("/mainPage/index.jsp").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else if (page.equals("2")) { // 正在登记
			try {
				request.getRequestDispatcher("/mainPage/index2.jsp").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		} else if (page.equals("3")) { // 暂未开始
			try {
				request.getRequestDispatcher("/mainPage/index3.jsp").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else if (page.equals("4")) { // 登记结束
			try {
				request.getRequestDispatcher("/mainPage/index4.jsp").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}

	/**
	 * 审核信息list
	 */
	public void verifyInfoList(HttpServletRequest request, HttpServletResponse response) {
		List<HouseSource> houseList = houseSourceDao.selectInfoAll();
		request.setAttribute("houseList", houseList);
		try {
			request.getRequestDispatcher("/admin_houtai/left_daohang/verify.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 房源信息list
	 */
	public void houseInfoList(HttpServletRequest request, HttpServletResponse response) {
		List<HouseSource> houseList = houseSourceDao.selectInfoAll();
		int houseAmount = houseSourceDao.getCount();
		request.setAttribute("houseList", houseList);
		request.setAttribute("houseAmount", houseAmount);
		
		try {
			request.getRequestDispatcher("/afterView/publicSell.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//销售公告弹窗
	public void sellInfoWindow(HttpServletRequest request, HttpServletResponse response) {
		String ESTATE_ID = request.getParameter("ESTATE_ID");
		HouseSource houseSource = houseSourceDao.selectInfo(ESTATE_ID);
		request.setAttribute("houseSource", houseSource);
		try {
			request.getRequestDispatcher("/gonggao.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 销售公告审核
	 */
	public void sellInfoVerify() {

	}

	/**
	 * 摇号分组方式
	 */
	public void groupMethod() {

	}

	/**
	 * 摇号分组方式审核
	 */
	public void groupMethodVerify() {

	}

	/**
	 * 发布摇号时间
	 */
	public void issueRockTime(HttpServletRequest request, HttpServletResponse response) {
		List<HouseSource> houseList = houseSourceDao.selectInfoAll();
		request.setAttribute("houseList", houseList);
		
		int EATATE_ID = -1;
		if(request.getParameter("EATATE_ID")!=null) {
			EATATE_ID = Integer.parseInt(request.getParameter("EATATE_ID"));
			Date date = Transform.StringToDate(request.getParameter("LOTIERY_TIME"));
			request.setAttribute("status", "true");
			houseSourceDao.verifyRockTime(EATATE_ID, date);
			try {
				System.out.println(request.getAttribute("status"));
				request.getRequestDispatcher("/afterView/suc.html").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		
		try {
			System.out.println(request.getAttribute("status"));
			request.getRequestDispatcher("/afterView/publicLotnumberTime.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 摇号时间审核
	 */
	public void rockTime(HttpServletRequest request, HttpServletResponse response) {

	}

	/**
	 * 发布选房时间
	 */
	public void issueSelectHouseTime(HttpServletRequest request, HttpServletResponse response) {
		List<HouseSource> houseList = houseSourceDao.selectInfoAll();
		request.setAttribute("houseList", houseList);
		
		int EATATE_ID = -1;
		if(request.getParameter("EATATE_ID")!=null) {
			EATATE_ID = Integer.parseInt(request.getParameter("EATATE_ID"));
			Date date = Transform.StringToDate(request.getParameter("SELECT_HOUSE_TIME"));
			request.setAttribute("status", "true");
			houseSourceDao.verifySelectTime(EATATE_ID, date);
			try {
				System.out.println(request.getAttribute("status"));
				request.getRequestDispatcher("/afterView/suc.html").forward(request, response);
			} catch (ServletException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return;
		}
		
		try {
			request.getRequestDispatcher("/afterView/publicSellectTime.jsp").forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 选房时间审核
	 */
	public void selectTimeVerify() {

	}
}
