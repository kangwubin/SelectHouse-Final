package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HouseSourceDao;
import dao.HouseSourceDaoImplement;
import entry.HouseSource;


public class afterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private HouseSourceDao houseSourceDao=new HouseSourceDaoImplement();
   
    public afterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String method=request.getParameter("method");
		System.out.println(method);
		switch(method){
			//case "add":		add(request,response) ;break;
			case "Housequery":	Housequery(request,response) ;request.getRequestDispatcher("/afterView/fangyuanxinxiguanli.jsp").forward(request,response) ;break;
			case "fadfaHousequery":	Housequery(request,response) ; break;
			
			
			//case "staffLogin":	staffLogin(request,response) ;break;
			//case "staffQuery":	staffQuery(request,response) ;break;
			//case "delete":	delete(request,response) ;break;
		}
		
		
	}

	private void Housequery(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException {
		System.out.println("发送信息成功-------------->");
		List<HouseSource> houseSources=houseSourceDao.selectInfoAll();
		
		//把houseSources放入request集合中
		request.setAttribute("HouseSource", houseSources);
		//转发页面到index.jsp(不能使用重定向)
		//request.getRequestDispatcher("").forward(request, response);
		System.out.println("发送信息成功-------------->"+houseSources.toString()); 
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	
	

}
