
<html lang="en">
    <head>
        <title>Dash Board</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:700, 600,500,400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">



        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.1.0/css/all.css">

        <link rel="stylesheet" href="css/dash.css">
        <link rel="stylesheet" href="css/chart.css">




        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/modules/data.js"></script>
        <script src="js/main.js"></script>
        <script src="js/npm.js"></script>
        <script src="js/dash.js"></script>
        <script src="js/chartD.js"></script>
        <script src="js/chartn.js"></script>

        <style>
            .main {
                display: flex;
                flex-flow: row wrap;
            }


        </style>
       
         <%
HttpSession sese = request.getSession();
String username = sese.getAttribute("username").toString();
%>
   


        <script type="text/javascript">
            $(document).ready(function () {
                // Activate tooltip
                $('[data-toggle="tooltip"]').tooltip();

                // Select/Deselect checkboxes
                var checkbox = $('table tbody input[type="checkbox"]');
                $("#selectAll").click(function () {
                    if (this.checked) {
                        checkbox.each(function () {
                            this.checked = true;
                        });
                    } else {
                        checkbox.each(function () {
                            this.checked = false;
                        });
                    }
                });
                checkbox.click(function () {
                    if (!this.checked) {
                        $("#selectAll").prop("checked", false);
                    }
                });
            });
        </script>





    </head>
    <body>
        <%--<%
        HttpSession ses = request.getSession();
        String user = ses.getAttribute("usertype").toString();
        %> --%>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                        
                    </button>
                    <a class="navbar-brand" href="#">DashBoard</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="logout.jsp"> <span class="glyphicon glyphicon-log-in"></span> <%= sese.getAttribute("username") %> </a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid text-center">    
            <div class="row content">
                <div class="col-sm-2 sidenav">
                    <nav>

                        <ul style="list-style-type:none">
                            <%-- <%  if(user.equals("2")){%> --%>
                            <li>
                                <a href="dashboradcorrect.jsp" >
                                    <span><i class="fa fa-dashboard"></i></span>
                                    <span>Dashboard</span>
                                </a>
                            </li>
                            <li>
                                <a href="demo.jsp">
                                    <span><i class="fas fa-file-invoice"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>  
                            <%--     <% }else if(user.equals("1")){%>    --%>
                            <li>
                                <a href="dashboradcorrect.jsp" >
                                    <span><i class="fa fa-dashboard"></i></span>
                                    <span>Demo</span>
                                </a>
                            </li>

                            <li>
                                <a href="#">

                                    <span><i class="fa fa-envelope"></i></span>
                                    <span>Demo</span>
                                </a>
                            </li>
                            <li class="active">
                                <a href="#">
                                    <span><i class="fa fa-bar-chart"></i></span>
                                    <span>Demo</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span><i class="fas fa-credit-card"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>

                            <li>
                                <a href="employeenew.jsp">
                                    <span><i class="fas fa-address-card"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>


                            <li>
                                <a href="Itemupdate_delete.jsp">
                                    <span><i class="fas fa-file-edit"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>
                            <li>
                                <a href="Employeeupdate_delete.jsp">
                                    <span><i class="fas fa-user-edit"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>
                            <li>
                                <a href="Supplier.jsp">
                                    <span><i class="fas fa-people-carry"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span><i class="fas fa-receipt"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>
                            <li>
                                <a href="ReportAll.jsp">
                                    <span><i class="fas fa-file-medical-alt"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>
                            <li>
                                <a href="cancel_invoice.jsp">
                                    <span><i class="fas fa-file-times"></i></span>

                                    <span> Demo </span>
                                </a>
                            </li>

                            <li>
                                <a href="demo.jsp">
                                    <span><i class="fas fa-file-invoice"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>  

                            <li>
                                <a href="GrnInvoice.jsp">
                                    <span><i class="fas fa-person-dolly"></i></span>

                                    <span>Demo</span>
                                </a>
                            </li>  

                            <li>
                                <a href="Search_item.jsp">
                                    <span><i class="fas fa-search"></i></span>

                                    <span>Demo </span>
                                </a>
                            </li> 
                            <%--  <% } %> --%>
                        </ul>
                    </nav>
                </div>

                <div class="main-content">
                    <div class="col-sm-8 text-left"> 
                        <div class="row" style= "margin-left: 10px;">
                            <h1 >
                                Dashboard
                                <small>Control panel</small>
                            </h1>

                        </div>
                    </div>


                    <hr>
                    <div class=" main">
                        <%-- <div class="container">--%>





                        <div class="box greenyellow "  style= "margin-left: 25px;margin-right: 20px;">





                            <div class="row" style= "margin-right: 3px;" >


                                <%--<div class="col-sm-3">
                                    <div class="flip" >
                                        <div class="card" style= "background-color: greenyellow;"> 
                                            <div class="face front"> 
                                                <div class="inner">   
                                                  
                                <%--<i class="fa fa-shopping-cart" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                   <i class="fal fa-credit-card" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                   <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Purchase</p>
                                
                            </div>
                        </div> 
                        <div class="face back"> 
                            <div class="inner text-center"> 
                                <h3>Improved efficiency through automation</h3>
                                <button type="button" class="btn btn-default">Know More</button>
                            </div>
                        </div>
                    </div>	 
                </div>
            </div>--%>
                                <%--    <%  if(user.equals("2")){%> --%>
                                <div class="col-sm-3">
                                    <div class="flip ">
                                        <div class="card" style= "background-color: greenyellow;"> 
                                            <div class="face front"> 
                                                <div class="inner">  
                                                    <%--<i class="far fa-file-alt"  style="font-size:100px;color:white; margin-top: 30px;"></i>--%>
                                                    <i class="fal fa-file-invoice" style="font-size:100px;color:white; margin-top: 30px;"></i>


                                                    <br>
                                                    <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Order detail</p>
                                                </div>
                                            </div> 
                                            <div class="face back"> 
                                                <div class="inner text-center"> 
                                                    <h3>Demo</h3>
                                                    <button type="button" class="btn btn-default"><a href="reporttemp.jsp">Know More</a></button>
                                                </div>
                                            </div>
                                        </div>	 
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="flip ">
                                        <div class="card" style= "background-color: greenyellow;"> 
                                            <div class="face front"> 
                                                <div class="inner">   
                                                    <%-- <i class="far fa-user" style="font-size:100px;color:white; margin-top: 30px;"></i> --%>
                                                    <i class="far fa-address-card" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                                    <br>
                                                    <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Demo </p>
                                                </div>
                                            </div> 
                                            <div class="face back"> 
                                                <div class="inner text-center"> 
                                                    <h3>Demo</h3>
                                                    <button type="button" class="btn btn-default">Know More</button>
                                                </div>
                                            </div>
                                        </div>	 
                                    </div>
                                </div>

                                <div class="col-sm-3">
                                    <div class="flip ">
                                        <div class="card" style= "background-color: greenyellow;"> 
                                            <div class="face front"> 
                                                <div class="inner">   

                                                    <i class="fal fa-file-edit" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                                    <br>
                                                    <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Demo</p>
                                                </div>
                                            </div> 
                                            <div class="face back"> 
                                                <div class="inner text-center"> 
                                                    <h3>Demo</h3>
                                                    <button type="button" class="btn btn-default">Know More</button>
                                                </div>
                                            </div>
                                        </div>	 
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="flip" >
                                        <div class="card" style= "background-color: greenyellow;"> 
                                            <div class="face front"> 
                                                <div class="inner">   

                                                    <%--<i class="fa fa-shopping-cart" style="font-size:100px;color:white; margin-top: 30px;"></i>--%>
                                                    <i class="fal fa-credit-card" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                                    <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Demo</p>

                                                </div>
                                            </div> 
                                            <div class="face back"> 
                                                <div class="inner text-center"> 
                                                    <h3>Demo</h3>
                                                    <button type="button" class="btn btn-default">Know More</button>
                                                </div>
                                            </div>
                                        </div>	 
                                    </div>
                                </div>
                            </div>




                            <br><br>
                            <div class="row" style= "margin-right: 3px; " >


                                <div class="col-sm-3">
                                    <div class="flip">
                                        <div class="card" style= "background-color:lightblue;"> 
                                            <div class="face front"> 
                                                <div class="inner">   

                                                    <i class="fal fa-user-edit" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                                    <br>
                                                    <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Demo</p>
                                                </div>
                                            </div> 
                                            <div class="face back"> 
                                                <div class="inner text-center"> 
                                                    <h3>Demo </h3>
                                                    <button type="button" class="btn btn-default">Know More</button>
                                                </div>
                                            </div>
                                        </div>	 
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="flip">
                                        <div class="card" style= "background-color:lightblue;"> 
                                            <div class="face front"> 
                                                <div class="inner">   
                                                    <i class="fal fa-people-carry" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                                    <br>
                                                    <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Demo</p>
                                                </div>
                                            </div> 
                                            <div class="face back"> 
                                                <div class="inner text-center"> 
                                                    <h3>Demo</h3>
                                                    <button type="button" class="btn btn-default">Know More</button>
                                                </div>
                                            </div>
                                        </div>	 
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="flip">
                                        <div class="card" style= "background-color:lightblue;"> 
                                            <div class="face front"> 
                                                <div class="inner">   
                                                    <i class="fal fa-receipt" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                                    <br>
                                                    <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Demo</p>
                                                </div>
                                            </div> 
                                            <div class="face back"> 
                                                <div class="inner text-center"> 
                                                    <h3>Demo</h3>
                                                    <button type="button" class="btn btn-default">Know More</button>
                                                </div>
                                            </div>
                                        </div>	 
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="flip">
                                        <div class="card" style= "background-color:lightblue;"> 
                                            <div class="face front"> 
                                                <div class="inner">   
                                                    <i class="fal fa-file-medical-alt" style="font-size:100px;color:white; margin-top: 30px;"></i>
                                                    <br>
                                                    <p style ="text-align: center;font-size:24px;color:white;font-weight: 900;">Demo</p>
                                                </div>
                                            </div> 
                                            <div class="face back"> 
                                                <div class="inner text-center"> 
                                                    <h3>Demo</h3>
                                                    <button type="button" class="btn btn-default">Know More</button>
                                                </div>
                                            </div>
                                        </div>	 
                                    </div>
                                </div>
                              
                            </div>



                        </div>
                        <br>
                        <%-- chart start here--%>

                        <div class="row" style= "margin-right: 3px;margin-top: 15px;" >
                            <div class="col-sm-3">

                                <div class="box greenyellow "  style= "margin-left: 25px;margin-right: 20px;">


                                </div>
                            </div>

                        </div>

                        <%--</div>--%>






                    </div>   





                </div>

            </div>

        </div>





        <footer >
        <p>Copyright © 2020 Dhanushka Madhuranga. All rights reserved</p>
        </footer>

    </body>
</html>
