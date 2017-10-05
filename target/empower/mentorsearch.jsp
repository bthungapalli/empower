<%@ page import="java.util.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <title>Mentors & Experts</title>
    <link rel="stylesheet" type="text/css" href="<%=getServletContext().getContextPath()%>/styles/styles.css">
</head>

<body>

		
<form method="get" name="frm" action="mentorsearch">
      <table border="0" width="300" align="center">
        <tr><td colspan=10 style="font-size:12pt;" align="center">
        <h3>Search Mentors</h3></td></tr>
        <tr>
        <td><input type="radio" name="nameCheck" value="subject"></td>
        <td ><b>Subject</b></td>
          <td><input type="text" name="subject" placeholder="Subject">
        </td>
        </tr>
        <tr>
        <td><input type="radio" name="nameCheck" value="tech"></td>
        <td ><b>Technical</b></td>
          <td><input type="text" name="tech" placeholder="Technical">
        </td>
        </tr>        
         <tr>
        <td><input type="radio" name="nameCheck" value="lang"></td>
        <td ><b>Languages</b></td>
          <td><input type="text" name="lang" placeholder="Languages">
        </td>
        </tr>        
        <tr>
        <td><input type="radio" name="nameCheck" value="national"></td>
        <td ><b>National</b></td>
          <td><input type="text" name="national" placeholder="National">
        </td>
        </tr>
        <tr><td colspan=2 align="center">
        <input  type="submit" name="submit" value="Search"></td></tr>
      </table>
    </form>
    
		
		<div>
		<%
		  ArrayList al = (ArrayList) request.getAttribute("finalList");
			if(al !=null && al.size() > 0 ){
		%>
		<table width="auto" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=7 align="center"
                    style="background-color:teal">
                    <b>User Record</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>User Name</b></td>
                <td><b>Subject</b></td>
                <td><b>Technical</b></td>
                <td><b>Language</b></td>
                 <td><b>National</b></td>
                <td><b>Location</b></td>
            </tr>
            <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("finalList") != null) {
                  
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
 
                        if ((count % 2) == 0) {
                            color = "#eeffee";
                        }
                        count++;
                        ArrayList pList = (ArrayList) itr.next();
            %>
            <tr style="background-color:<%=color%>;">
                <td><%=pList.get(0)%></td>
                <td><%=pList.get(1)%></td>
                <td><%=pList.get(2)%></td>
                <td><%=pList.get(3)%></td>
                <td><%=pList.get(4)%></td>
                <td><%=pList.get(5)%></td>
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=7 align="center"
                    style="background-color:#eeffee"><b>No Record Found..</b></td>
            </tr>
            <%            }
            %>
        </table>
		<%} %>
		</div>
	
    	<div>
			<a href="usersearch.jsp">Search User</a>
		</div>
		<br>
		
	<div class="next-form">
	<form action="logout" method="get">
			<input type="submit" value="Logout" class="btn btn-logout">
	</form>
		
		</div>
    
</body>
    <!-- container ends -->

    <!-- footer starts -->
    <!-- footer ends -->


</html>
