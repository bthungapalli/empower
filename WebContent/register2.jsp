<!DOCTYPE html>
<html>

<head>
    <title>Title of the document</title>
    <link rel="stylesheet" type="text/css" href="styles/styles.css">
</head>

<body>
    <!-- header starts -->
    <header>
        <div class="w-50p pull-left">
            <span class="logo"><img src="images/logo_new.png" height="70px;"/></span>
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
            <div class="welcome-head-big-p2 p-t-20"><span class="color-blue">Register</span> (Step 2) - Pick up area of interest </div>
        </div>
        <div class="mid-content-form2">
        	<form action="registration" method="post">
		<input type="hidden" name="page" value="page2">
            <div class="col-content pull-left">
                <ul>
                    <li><input type="checkbox" name="psc">&nbsp;Procurement &amp; Supply Chain</li>
                    <li><input type="checkbox" name="ps">&nbsp;Product Selection
                        <ul>
                            <li><input type="checkbox" name="srp">&nbsp;Select Right Product</li>
                            <li><input type="checkbox" name="dsq">&nbsp;Defining Specification &amp; Qualitiy</li>
                        </ul>
                    </li>
                    <li><input type="checkbox" name="qual">Quantification
                        <ul>
                            <li><input type="checkbox" name="fq">Forecasting &amp; Quantification</li>
                            <li><input type="checkbox" name="sp">Supply Planning</li>
                        </ul>
                    </li>
                    <li><input type="checkbox" name="proc">Procurement
                        <ul>
                            <li><input type="checkbox" name="pb">Planning and Budgeting</li>
                            <li><input type="checkbox" name="sr">Supplier Relation</li>
                            <li><input type="checkbox" name="tp">Tendering Process</li>
                            <li><input type="checkbox" name="crm">Contract &amp; risk management</li>
                            <li><input type="checkbox" name="qapp">Quality Assurance of Process and Products</li>
                            <li><input type="checkbox" name="mie">Manage Imports & Exports</li>
                        </ul>
                    </li>
                    <li><input type="checkbox" name="ss">Store Selection 
                        <ul>
                            <li><input type="checkbox" name="gspi">Good Storage Practices and Inventory</li>
                        </ul>
                    </li>
                    <li><input type="checkbox" name="mgmt">Management
                        <ul>
                            <li><input type="checkbox" name="td">Transportation and Distribution </li>
                            <li><input type="checkbox" name="drl">Disposal and revers Logistics</li>
                            <li><input type="checkbox" name="rrd">Repacking, Re-Distribution </li>
                        </ul>
                    </li>
                    <li><input type="checkbox" name="eu">Effective Use </li>
                        <ul>
                            <li><input type="checkbox" name="pd">Proper Dispensing </li> 
                            <li><input type="checkbox" name="pcpu">Promoting Compliance and Proper Use</li>
                            <li><input type="checkbox" name="rcp">Reporting Consumption Patterns</li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col-content pull-left">
                <ul>
                    <li><input type="checkbox" name="psmsf">PSM Supporting Functions</li>
                    <li><input type="checkbox" name="psg">Policies, Strategies, Guidelines etc.</li>
                    <li><input type="checkbox" name="hrm">Human Resource Management</li>
                    <li><input type="checkbox" name="its">Information technology &amp; Systems </li>
                    <li><input type="checkbox" name="fb">Funding &amp; Budget</li>
                    <li><input type="checkbox" name="qa">Quality Assurance</li>
                    <li><input type="checkbox" name="me">Monitoring &amp; Evaluation</li>
                    <li><input type="checkbox" name="tt">Tools &amp; Templates</li>
                </ul>
            </div>
            <div class="col-content pull-left">
                <ul>
                    <li><input type="checkbox" name="dc">Disease &amp; Conditions</li>
                    <li><input type="checkbox" name="hiv">HIV</li>
                    <li><input type="checkbox" name="tb">TB</li>
                    <li><input type="checkbox" name="mal">Malaria</li>
                    <li><input type="checkbox" name="ncd">Non Communicable Disease</li>
                    <li><input type="checkbox" name="fpr">Family Planning &amp; Reproductivity </li>
                    <li><input type="checkbox" name="mnhi">Maternal, Neonatal Health, and Immunization</li>
                    <li><input type="checkbox" name="prog">Program</li>
                    <li><input type="checkbox" name="nut">Nutrition</li>

                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        	<div class="mid-content-bottom ">
            <div class="next-form">
                <input type="submit" class="btn-primary" value="Submit">
            </div>
            <div class="clearfix"></div>
        </div>
        
            </form>
        </div>
        
        <div class="clearfix"></div>
    </div>
    <!-- container ends -->

    <!-- footer starts -->
    <footer>
        <div class="footer-left pull-left">
            <img src="images/bl_logo.png" height="50px;">
        </div>
        <div class="footer-right pull-right">
            <img src="images/s1s43.png" height="35">
        </div>
    </footer>
    <!-- footer ends -->
</body>

</html>
