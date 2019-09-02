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
import dao.PurchaserDao;
import dao.PurchaserDaoImplement;
import dao.StaffDaoImplement;
import entry.HouseSource;
import entry.Purchaser;
import entry.StaffDim;


public class HouseSourceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	private HouseSourceDao houseSourceDao=new HouseSourceDaoImplement();
	private PurchaserDao purchasrDao=new PurchaserDaoImplement();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String method=request.getParameter("method");
//		switch(method){
//			case "add":		add(request,response) ;break;
//			case "query":	query(request,response) ;break;
//			case "delete":	delete(request,response) ;break;
//		}
//	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//			String name=req.getParameter("ESTATE_NAME");
//			System.out.println(name);
		
		//1	获取 servletPath： /add.do 或	/delete.do
		
		String servletPath=req.getServletPath();
		//2	取出/和.do 得到add或delete的字符
		servletPath=servletPath.substring(1).substring(0, servletPath.length()-4);
		System.out.println(servletPath);
		
		try {
			//3	利用反射获取methodName对应的方法
			Method method=getClass().getDeclaredMethod(servletPath, HttpServletRequest.class,HttpServletResponse.class);
			//4	利用反射调用对应的方法
			method.invoke(this, req,resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			resp.sendRedirect("error.jsp");
		}
		
		
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		System.out.println("edit");
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		System.out.println("delete");
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

		System.out.println("最新测试query-------------->");
	}
	


	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		System.out.println("add");
	}
//	
	private void staffQuery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		//1 调用houseSourceDao的方法
		//houseSourceDao.selectInfoAll();
		//把houseSourceDao的集合放入request中
		List<HouseSource> houseSources=houseSourceDao.selectInfoAll();
		//把houseSources放入request集合中
		request.setAttribute("HouseSource", houseSources);
	
		//转发页面到index.jsp(不能使用重定向)
		//request.getRequestDispatcher("/index.jsp").forward(request, response);

		System.out.println("-------------->"+houseSources.toString());
	}
	
//	private void PurchaserQuery(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		List<Purchaser> purchaser=purchasrDao.selectInfo();
//		//把houseSources放入request集合中
//		request.setAttribute("Purchasers", purchaser);
//		System.out.println("-------------->"+purchaser.toString());
//	
//		//转发页面到index.jsp(不能使用重定向)
//		//request.getRequestDispatcher("/index.jsp").forward(request, response);
//		request.getRequestDispatcher("/afterView/yonghuxinxiguanli.jsp").forward(request,response) ;
//		
//	}
	
	
	private void send(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

	}

}
