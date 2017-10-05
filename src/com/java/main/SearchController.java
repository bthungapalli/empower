/**
 * 
 */
package com.java.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.exoplatform.container.web.AbstractHttpServlet;

/**
 * @author bthungapalli
 *
 */
@WebServlet(value="/search")
public class SearchController extends AbstractHttpServlet{
	private static final long serialVersionUID = 1L;
	Statement stmt = null;
	Connection connection = null;
	
	protected void doGet(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session = request.getSession(false);
		System.out.println();
		if(session !=null && session.getAttribute("user") !=null){
		String organization = request.getParameter("org");
		String designation = request.getParameter("designation");
		String location = request.getParameter("location");
		String nameCheck = request.getParameter("nameCheck");
		connection = ConnectionUtil.createConnection(Registration.ENV);
		try {
			stmt = connection.createStatement();
			String sql  = "select * from user_registration";
			if(nameCheck !=null && nameCheck.equals("org"))
			{
				sql+=" where org_name='"+ organization+"'";
			}
			else if(nameCheck != null && nameCheck.equals("designation")){
				sql+=" where designation='"+ designation+"'";
			}
			else if(nameCheck != null && nameCheck.equals("location")){
				sql+=" where location='"+ location+"'";
			}
			
			System.out.println("Sql :::"+sql);
			
			ResultSet rs = stmt.executeQuery(sql);
			ArrayList al;
			ArrayList finalList = new ArrayList<>();
			while(rs.next()){
				 al = new ArrayList<>();
				al.add(rs.getString(2));
				al.add(rs.getString(3));
				al.add(rs.getString(4));
				al.add(rs.getString(5));
				al.add(rs.getString(6));
				al.add(rs.getString(7));
				al.add(rs.getString(8));
				finalList.add(al);
			}
			
			request.setAttribute("finalList", finalList);
			RequestDispatcher view = request.getRequestDispatcher("userList.jsp");
			view.forward(request, response);
			stmt.close();
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		else{
			RequestDispatcher view = request.getRequestDispatcher("login.jsp");
			try {
				PrintWriter out= response.getWriter();
				out.println("<font color=red>Session Expired. Please login again.</font>");
				view.include(request, response);
			} catch (ServletException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
