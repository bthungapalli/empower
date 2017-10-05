<!DOCTYPE html>
<html>

<head>
    <title>Title of the document</title>
    <link rel="stylesheet" type="text/css" href="<%=getServletContext().getContextPath()%>/styles/styles.css">
</head>

<body>
    <!-- header starts -->
    <header>
        <div class="w-50p pull-left">
            <span class="logo"><img src="<%=getServletContext().getContextPath()%>/images/logo_new.png" height="70px;"/></span>
        </div>
        <div class="w-50p pull-right text-right top-left-menu">
            <ul>
                <li><a href="login.jsp">Login</a></li>
                <li>|
                    <li>
                        <li><a href="#">English</a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </header>
    <!-- header ends -->

    <div class="clearfix"></div>

    <!-- navigation starts -->
    <div class="navigation w-100p bc-01 text-center fc-white p-08">
        <ul>
            <li><a href="#">Platform</a></li>
            <li><a href="#">Global Experts</a></li>
            <li><a href="#">Partners</a></li>
            <li><a href="#">Take a Tour</a></li>
            <li><a href="#">Search</a></li>
            <li><a href="#">Register</a></li>
        </ul>
    </div>
    <!-- navigation ends -->

    <div class="clearfix"></div>

    <!-- container starts -->
    <div class="container1">
        <div class="row text-center head-row">
            <div class="welcome-head-big-p2 p-t-20"><span class="color-blue">Register</span> (Step 1)</div>
        </div>
        <div class="mid-content">
		<form action="registration" method="post">
		<input type="hidden" name="page" value="page1">
            <div class="col-content pull-left">
                <h3>Sign-In Details :</h3>
                <div class="first-form-row">
                    <input type="text" name="username" placeholder="User Name" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
                <div class="first-form-row">
                    <input type="text" name="email" placeholder="Email" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
                <div class="first-form-row">
                    <input type="password" name="pass1" placeholder="Password" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
                <div class="first-form-row">
                    <input type="password" name="pass1" placeholder="Comfirm Password" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-content pull-left">
                <h3>Education &amp; Profession :</h3>
                <div class="first-form-row">
                    <input type="text" name="yoe" placeholder="Year of Experience" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
                <div class="first-form-row">
                    <input type="text" name="des" placeholder="Designation" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
                <div class="first-form-row">
                    <input type="text" name="wd" placeholder="Work Department" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
                <div class="first-form-row">
                    <input type="text" name="organization" placeholder="Organization Name" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
                   <div class="first-form-row">
                    <input type="text" name="location" placeholder="Location" class="input-element" required/>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-content pull-left p-t-95 text-center">
                <div class="img-div">
                    <a href="#"><img src="<%=getServletContext().getContextPath()%>/images/photo-upload.png" height="220"/></a>
                </div>
                <div class="first-form-row sel-lang">
                    <div class="clearfix"></div>
                    <select class="input-select">
                        <option value="eng">-- Select Language -- </option>
                        <option value="eng">English</option> 
                    </select>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="mid-content-bottom">
                <div class="next-form">
				<input type="submit" value="NEXT" class="btn btn-primary">
                  
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
		</div>

        <div class="clearfix"></div>
    </div>
    <!-- container ends -->

    <!-- footer starts -->
    <footer>
        <div class="footer-left pull-left">
            <img src="<%=getServletContext().getContextPath()%>/images/bl_logo.png" height="50px;">
        </div>
        <div class="footer-right pull-right">
            <img src="<%=getServletContext().getContextPath()%>/images/s1s43.png" height="35">
        </div>
    </footer>
    <!-- footer ends -->
</body>

</html>
