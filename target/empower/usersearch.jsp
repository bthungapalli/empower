<!DOCTYPE html>
<html>

<head>
    <title>User Search</title>
    <link rel="stylesheet" type="text/css" href="<%=getServletContext().getContextPath()%>/styles/styles.css">
</head>

<body>

		
<form method="get" name="frm" action="search">
      <table border="0" width="300" align="center">
        <tr><td colspan=2 style="font-size:12pt;" align="center">
        <h3>Search User</h3></td></tr>
        <tr>
        <td><input type="radio" name="nameCheck" value="designation"></td>
        <td ><b>Designation</b></td>
          <td><input type="text" name="designation" placeholder="Designation">
        </td>
        </tr>
        <tr>
        <td><input type="radio" name="nameCheck" value="org"></td>
        <td ><b>Organization</b></td>
          <td><input type="text" name="org" placeholder="Organization">
        </td>
        </tr>        
         <tr>
        <td><input type="radio" name="nameCheck" value="location"></td>
        <td ><b>Location</b></td>
          <td><input type="text" name="location" placeholder="Location">
        </td>
        </tr>        
        
        <tr><td colspan=2 align="center">
        <input  type="submit" name="submit" value="Search"></td></tr>
      </table>
    </form>
    
    	<div>
			<a href="mentorsearch.jsp">Search Mentor</a>
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
