<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="<%=getServletContext().getContextPath()%>/styles/styles.css">
</head>

<body>

    <div class="container1">
        <div class="row text-center head-row">
            <div class="welcome-head-big-p2 p-t-20"><span class="color-blue">Login</span></div>
        </div>
        <div class="mid-content">
		
<form action="login" method="post">

 <div class="first-form-row">
                   Username: <input type="text" name="user" placeholder="User Name" class="input-element" required/>
                    <div class="clearfix"></div>
 </div>
 
  <div class="first-form-row">
                   Password: <input type="password" name="pwd" placeholder="Password" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>               
  <div class="mid-content-bottom">
                <div class="next-form">
				<input type="submit" value="Login" class="btn btn-primary">
                  
                </div>
                <div class="clearfix"></div>
            </div>
</form>
</div>
</div>
</body>
    <!-- container ends -->

    <!-- footer starts -->
    <!-- footer ends -->


</html>
