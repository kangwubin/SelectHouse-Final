package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HouseSourceDao;
import dao.HouseSourceDaoImplement;
import dao.PurchaserDao;
import dao.PurchaserDaoImplement;
import dao.StaffDao;
import dao.StaffDaoImplement;
import entry.HouseSource;
import entry.Purchaser;
import entry.Staff;
import entry.StaffDim;
import util.MyUTF;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private StaffDao staffDao=new StaffDaoImplement();
    private PurchaserDao purchaserDao=new PurchaserDaoImplement();
    private HouseSourceDao houseSourceDao	=	new HouseSourceDaoImplement();

    
    //private HouseSource houseSource=new HouseSource();
    
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello");
		String method=request.getParameter("method");
		switch(method){
			//case "add":		add(request,response) ;break;
			case "query":			query(request,response) ;break;
			case "staffLogin":		staffLogin(request,response) ;break;
			case "purchaserLogin":	purchaserLogin(request,response); break;
			
			
			case "staffQuery":	staffQuery(request,response) ;break;
			//case "delete":	delete(request,response) ;break;
		}
	}

	private void purchaserLogin(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		String name=MyUTF.getNewString(request.getParameter("username"));
		String pwd=MyUTF.getNewString(request.getParameter("password1"));
		
		String pwd1 =  MyUTF.toMd5(pwd);
		System.out.println("name :"+name+" pwd :"+pwd);
		Purchaser purchaser=purchaserDao.login(name, pwd);
		
		System.out.println(purchaser.toString());
		if(purchaser.getPURCHASER_ID()==0) {
			 System.out.println("denglushibai ");
			 request.getRequestDispatcher("login.jsp").forward(request, response);
		}else {
			//request.setAttribute("purchaser", purchaser);
			HttpSession session	= request.getSession();
			session.setAttribute("purchaser", purchaser);
		
			
			
			request.getRequestDispatcher("show_index.jsp").forward(request, response);
		}
		
		
		
		
	}

	private void purChaserVerifyInfo(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		
		
	}

	private void staffLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		int name=Integer.parseInt(MyUTF.getNewString(request.getParameter("txtXm"))) ;
		String pwd=MyUTF.getNewString(request.getParameter("txtSjhm"));
		System.out.println("姓名："+name+"密码："+pwd);
		
		 boolean istrue=false;
		Staff staff=new Staff();
		 staff = staffDao.login(name, pwd);
		 System.out.println(staffDao.toString());
		 if(staff.getPRIVILEGE()==0) {
			 System.out.println("denglushibai ");
			 request.getRequestDispatcher("/afterView/yuangongdengru.jsp").forward(request,response) ;
		 }else
		 {
//			 if(staff.getPRIVILEGE()>=7) {
//				 List<HouseSource> houseSources=houseSourceDao.selectInfoAll();
//				 HttpSession session	= request.getSession();
//				 session.setAttribute("staff", staff);
//					//把houseSources放入request集合中
//					request.setAttribute("HouseSource", houseSources);
//					//转发页面到index.jsp(不能使用重定向)
//					//request.getRequestDispatcher("").forward(request, response);
//					System.out.println("管理员登录-------------->");
//					request.getRequestDispatcher("/afterView/guanliyuan-fangyuanxinxi.jsp").forward(request,response) ;
//			 
//		 }else {
			 System.out.println("登陆成功");
			 HttpSession session	= request.getSession();
			 session.setAttribute("staff", staff);
			 
			 	List<HouseSource> houseSources=houseSourceDao.selectInfoAll();
				//把houseSources放入request集合中
				request.setAttribute("HouseSource", houseSources);
				
				//转发页面到index.jsp(不能使用重定向)
				//request.getRequestDispatcher("").forward(request, response);
				//System.out.println("发送信息成功-------------->"+houseSources.toString());
				request.getRequestDispatcher("/afterView/index.jsp").forward(request,response) ;
			 
		 }
			 
		
		
	}
	
	private void staffQuery(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{
		List<HouseSource> houseSources=houseSourceDao.selectInfoAll();
		//把houseSources放入request集合中
		request.setAttribute("HouseSource", houseSources);
		//转发页面到index.jsp(不能使用重定向)
		//request.getRequestDispatcher("").forward(request, response);
		System.out.println("发送信息成功-------------->"+houseSources.toString());
	 
		request.getRequestDispatcher("/afterView/fangyuanxinxiguanli.jsp").forward(request,response) ;
	 
	}

	private void query(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException{

		
		System.out.println("我进来了");
		boolean isLogin=false;
		String name=MyUTF.getNewString(request.getParameter("name"));
		String pwd=request.getParameter("pwd");
		System.out.println("姓名："+name+"    密码："+pwd);
//		if(staffDao.login(name, pwd)) {
//			
//
//			request.getRequestDispatcher("/success.html").forward(request,response);
//		}else
//			request.getRequestDispatcher("/login.jsp").forward(request, response);
//			;

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
