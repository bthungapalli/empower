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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.exoplatform.container.web.AbstractHttpServlet;

import com.java.main.ConnectionUtil;

/**
 * Servlet implementation class Registration
 */
public class Registration extends AbstractHttpServlet {
	private static final long serialVersionUID = 1L;
	Statement stmt = null;
	Connection connection = null;

	public final static String ENV = "prod";

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			RequestDispatcher view = request.getRequestDispatcher("registration.jsp");
			view.forward(request, response);
		} catch (IOException | ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String page = request.getParameter("page");
		//System.out.println("Page value ::" + page);
		HttpSession session = request.getSession(false);
		try {
			if (page.equalsIgnoreCase("page1")) {
				String user_id = request.getParameter("username");
				String user_fname = request.getParameter("username");
				Integer exp_years = Integer.parseInt(request.getParameter("yoe"));
				String designation = request.getParameter("des");
				String work_department = request.getParameter("wd");
				String org_name = request.getParameter("organization");
				String user_email = request.getParameter("email");
				Integer user_type = 0;
				String user_lname = request.getParameter("username");
				String location = request.getParameter("location");

				boolean retunValue = persistUserDetails(user_id, user_fname, exp_years, designation, work_department,
						org_name, user_email, user_type, user_lname, location);

				if (retunValue) {
					session.setAttribute("user_email", user_email);
					response.sendRedirect("register2.jsp");
				}
			} else if (page.equalsIgnoreCase("page2")) {
				if(session.getAttribute("user_email") !=null){
				
				updateRegister2(request, response,session);
				session.removeAttribute("user_email");
				response.sendRedirect("login.jsp");
				}else{
					RequestDispatcher view = request.getRequestDispatcher("registration.jsp");
					PrintWriter out= response.getWriter();
					out.println("<font color=red>Please complete Step1 First.</font>");
					view.include(request, response);	
					
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("registration.jsp");
		}
	}

	public void updateRegister2(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

		Integer psc = convert(request.getParameter("psc"));
		Integer ps = convert(request.getParameter("ps"));
		Integer srp = convert(request.getParameter("srp"));
		Integer dsq = convert(request.getParameter("dsq"));
		Integer quat = convert(request.getParameter("qual"));
		Integer fq = convert(request.getParameter("fq"));
		Integer sp = convert(request.getParameter("sp"));
		Integer proc = convert(request.getParameter("proc"));
		Integer pb = convert(request.getParameter("pb"));
		Integer sr = convert(request.getParameter("sr"));
		Integer tp = convert(request.getParameter("tp"));
		Integer crm = convert(request.getParameter("crm"));
		Integer qapp = convert(request.getParameter("qapp"));
		Integer mie = convert(request.getParameter("mie"));
		Integer ss = convert(request.getParameter("ss"));
		Integer gspi = convert(request.getParameter("gspi"));
		Integer mgmt = convert(request.getParameter("mgmt"));
		Integer td = convert(request.getParameter("td"));
		Integer drl = convert(request.getParameter("drl"));
		Integer rrd = convert(request.getParameter("rrd"));
		Integer eu = convert(request.getParameter("eu"));
		Integer pd = convert(request.getParameter("pd"));
		Integer pcpu = convert(request.getParameter("pcpu"));
		Integer rcp = convert(request.getParameter("rcp"));
		Integer psmsf = convert(request.getParameter("psmsf"));
		Integer psg = convert(request.getParameter("psg"));
		Integer hrm = convert(request.getParameter("hrm"));
		Integer its = convert(request.getParameter("its"));
		Integer fb = convert(request.getParameter("fb"));
		Integer qa = convert(request.getParameter("qa"));
		Integer me = convert(request.getParameter("me"));
		Integer tt = convert(request.getParameter("tt"));
		Integer dc = convert(request.getParameter("dc"));
		Integer hiv = convert(request.getParameter("hiv"));
		Integer tb = convert(request.getParameter("tb"));
		Integer mal = convert(request.getParameter("mal"));
		Integer ncd = convert(request.getParameter("ncd"));
		Integer fpr = convert(request.getParameter("fpr"));
		Integer mnhi = convert(request.getParameter("mnhi"));
		Integer prog = convert(request.getParameter("prog"));
		Integer nut = convert(request.getParameter("nut"));

		updateUserDetails(quat, proc, ss, mgmt, eu, mgmt, psmsf, tt, qa, fb, its, hrm, psg, hiv, mal, tb, ncd, fpr,session);

	}

	private Integer convert(String checked) {
		return (checked !=null && checked.equals("on")) ? 1 : 0;
	}

	public void updateUserDetails(Integer psm_product_quantification, Integer psm_product_procurement,
			Integer psm_product_store_selection, Integer psm_product_effective_use, Integer psm_product_management,
			Integer psm_product_selection, Integer support_tools, Integer support_monitoring, Integer support_qa,
			Integer support_funding, Integer support_it, Integer support_hrm, Integer support_policies, Integer dc_hiv,
			Integer dc_malaria, Integer dc_tb, Integer dc_ncd, Integer dc_family, HttpSession session) {
			
		String userEmail = (String)session.getAttribute("user_email");
		String updateQuery = String.format(
				"UPDATE user_registration SET psm_product_quantification = %d, psm_product_procurement = %d, psm_product_store_selection = %d, psm_product_effective_use = %d, psm_product_management = %d, psm_product_selection = %d, support_tools = %d, support_monitoring = %d, support_qa = %d, support_funding = %d, support_it = %d, support_hrm = %d, support_policies = %d, dc_hiv = %d, dc_malaria = %d, dc_tb = %d, dc_ncd = %d, dc_family = %d WHERE user_email = '%s'",
				psm_product_quantification, psm_product_procurement, psm_product_store_selection,
				psm_product_effective_use, psm_product_management, psm_product_selection, support_tools,
				support_monitoring, support_qa, support_funding, support_it, support_hrm, support_policies, dc_hiv,
				dc_malaria, dc_tb, dc_ncd, dc_family,userEmail);
		System.out.println("Query::::"+updateQuery);
		try {

			connection = ConnectionUtil.createConnection(ENV);

			stmt = connection.createStatement();
			stmt.executeUpdate(updateQuery);

			stmt.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public boolean persistUserDetails(String user_id, String user_fname, Integer exp_years, String designation,
			String work_department, String org_name, String user_email, Integer user_type, String user_lname,
			String location) throws SQLException {

		String insertQuery = String.format(
				"INSERT INTO user_registration (user_id, user_fname, exp_years,designation, work_department, org_name,location, user_email,user_type, user_lname) VALUES ( '%s', '%s', %d, '%s', '%s', '%s','%s', '%s', '%d', '%s');",
				user_id, user_fname, exp_years, designation, work_department, org_name, location, user_email, user_type,
				user_lname);

		try {
			System.out.println(insertQuery);
			connection = ConnectionUtil.createConnection(ENV);

			stmt = connection.createStatement();
			stmt.execute(insertQuery);
			System.out.println("executed");

			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			stmt.close();
			connection.close();
		}

	}

}
