package main;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class footer
 */
@WebServlet("/footer")
public class footer extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.print("<div>");
		out.print("<h5 style='float:left;  margin-left: 50px;' > Get to Know Us</h5>");
		out.print("<h5 style='float:left ;  margin-left: 100px;'> Connect with Us</h5>");
		out.print("<h5 style='float:left ;  margin-left: 100px;'> Make Money with Us</h5>");
		out.print("<h5 style='float:left;  margin-left: 150px;'>Let Us Help You</h5>");
		
		out.print("</div>");

	}

}
