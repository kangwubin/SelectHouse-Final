package servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HouseSourceDao;
import dao.HouseSourceDaoImplement;
import dao.StaffDao;
import dao.StaffDaoImplement;
import entry.HouseSource;
import entry.Staff;
import util.MyUTF;


public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    HouseSourceDao houseSourceDao=new HouseSourceDaoImplement();
    StaffDao staffDao	=	new StaffDaoImplement();
    public StaffServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			String method=request.getParameter("method");
			System.out.println(method);
//			String id=request.getParameter("id");
//			System.out.println(method+"id: "+id);
			
			switch(method){
				//case "add":		add(request,response) ;break;
				case "query":		query(request,response) ;break;
				case "staffDelet":  staffDelet(request,response);break;
				case "adminQuery":  staffQuery(request,response);request.getRequestDispatcher("/afterView/manageStaff.jsp").forward(request,response) ;break;
				case "adminUpdate":  adminUpdate(request,response);break;
				case "admintaffAdd":  staffAdd(request,response);request.getRequestDispatcher("/afterView/guanliyuan-guanliyuancaozuo.jsp").forward(request,response) ;break;
				case "staffAdd":  staffAdd(request,response);break;
				//case "delete":	delete(request,response) ;break;
			}
		}

		
		


	private void staffAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		String name=MyUTF.getNewString(request.getParameter("name"))  ;
		//System.out.println("name :"+name);
		int id=Integer.parseInt(MyUTF.getNewString(request.getParameter("id")))  ;
		//System.out.println("id :"+id);
		String pwd=MyUTF.getNewString(request.getParameter("pwd"));
		//System.out.println("pwd :"+pwd);
		String values[]	= request.getParameterValues("viwe");
		int PRIVILEGE = 0;
		if(values!=null&&values.length>0) {
			for(int i=0;i<values.length;i++) {
				PRIVILEGE = PRIVILEGE + Integer.parseInt(values[i]); 
				
			}
			System.out.println(" 权限是 : "+PRIVILEGE);
		}
		//System.out.println("name: "+name+"id: "+id+"pwd: "+pwd);
		boolean istrue	= staffDao.addInfo(id, name, pwd, PRIVILEGE);
		if(istrue) {
			staffQuery(request,response);
			request.getRequestDispatcher("/afterView/suc.html").forward(request,response) ;	
		}else
			request.getRequestDispatcher("/afterView/manageAddStaff.jsp").forward(request,response) ;
		
		
		
	}

	private void adminUpdate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {

		int id=Integer.parseInt(MyUTF.getNewString(request.getParameter("adminname")))  ;
		String oldpwd=MyUTF.getNewString(request.getParameter("adminoldpassword"));
		String newpwd=MyUTF.getNewString(request.getParameter("adminnewpassword"));
		String renewpwd=MyUTF.getNewString(request.getParameter("adminnewpassword1"));
		System.out.println("姓名："+id+"旧密码："+oldpwd+"新密码 ："+newpwd+"重复密码："+renewpwd);
		Staff staff	=	new Staff();
		staff	=	staffDao.login(id, oldpwd);
		if(newpwd.equals(renewpwd)) {
			if(staff.getEMPLOYEE_ID()!=0) {
			staffDao.verifyInfo(staff.getEMPLOYEE_ID(), staff.getEMPLOYEE_NAME(), newpwd, staff.getPRIVILEGE());
			request.getRequestDispatcher("/afterView/suc.html").forward(request,response) ;
			}else
			{
				System.out.println("您输入的信息有误！");
				request.getRequestDispatcher("SellInfoManage?operate=pwd").forward(request,response) ;
			}
		}else
		{
			System.out.println("您输入的验证码有误！");
			request.getRequestDispatcher("SellInfoManage?operate=pwd").forward(request,response) ;
		}
		
		
		
	}

	private void staffQuery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Staff> staffs=staffDao.selectAllInfo();
		//把houseSources放入request集合中
		System.out.println("员工信息： "+staffs.toString());
		request.setAttribute("staff", staffs);
	
	}

	private void staffDelet(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("发布摇号时间");
		
	}

	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
				//1 调用houseSourceDao的方法
				//houseSourceDao.selectInfoAll();
				//把houseSourceDao的集合放入request中
				List<HouseSource> houseSources=houseSourceDao.selectInfoAll();
				//把houseSources放入request集合中
				request.setAttribute("HouseSource", houseSources);
				//转发页面到index.jsp(不能使用重定向)
				//request.getRequestDispatcher("").forward(request, response);
		
		System.out.println("query  :  "+houseSources.toString());
	}
}
