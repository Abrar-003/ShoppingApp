package main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/home")
public class home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Connection con;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
			con=(Connection)config.getServletContext().getAttribute("jdbccon");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		
		RequestDispatcher rd=request.getRequestDispatcher("/header");
		rd.include(request, response);
		RequestDispatcher rd3=request.getRequestDispatcher("/header2");
		rd3.include(request, response);
		
		Statement st=null;
		ResultSet rs=null;
		try 
		{
		 st=con.createStatement();	
		 rs=st.executeQuery("select * from category ");
		 
		 while(rs.next())
		 {
			 out.println("<a href='getProducts?cid="+ rs.getInt(1) +"'> "+ rs.getString(2)+" </a> <br/>");
		 }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		finally 
		{
			try 
				{
				rs.close();
				st.close();
				}
			
			catch (SQLException e)
			
				{
				e.printStackTrace();
				}
		}
		RequestDispatcher rd1=request.getRequestDispatcher("/footer");
		rd1.include(request, response);
	}
			

}

