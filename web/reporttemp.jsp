<%-- 
    Document   : DaliyInvoiceReport
    Created on : 15-Jan-2020, 09:25:54
    Author     : Dhanush
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Model.DBconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:700, 600,500,400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      
                  
 <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.1.0/css/all.css">
        
        
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

        <script src="https://code.jquery.com/jquery-2.2.0.min.js"></script>
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/modules/data.js"></script>
<script src="js/table.js"></script>
  

    </head>
    
    <body >
        <div class="container" style="width: 960px ; height:7016px ;text-align: center;">
            <div class="row">
               
           <h1 style="">Order Placement </h1><br>
            </div>
            <div class="row">
                <div class="col-sm-6">
           <h4><span><strong>Buy Package Detail</strong></span></h4>
                </div>
                
                        
            </div>
            
            
                   <div class="row">
                        <table class="table ">
                            <thead>
<tr>
<th style="text-align: center">username</th>
<th style="text-align: center">package name</th>

<th style="text-align: center">quantity</th>
 <th style="text-align: center">subtotal</th>

</tr>

</thead>

<tbody>
    <%
        
     HttpSession ses = request.getSession();
     String invid=null;
   
try {
                            
                            
                             Connection con = DBconnection.initializeDatabase(); 
                             
                            
                             
                              PreparedStatement sti = con.prepareStatement("SELECT * FROM user_pack WHERE user_name ='"+ses.getAttribute("us")+"'" ); 
              ResultSet rsi = sti.executeQuery();  
   while(rsi.next()){ 

    
   %>
   
<tr>
  
    <td ><%out.write(rsi.getString("user_name"));%></td>
    <td><%out.write(rsi.getString("pack_name"));%></td>
    <td><%out.write(rsi.getString("quantity"));%></td>
   
      <td><%out.write(rsi.getString("subtotal"));%></td>
   

</tr>

    
    
<%
}
                        } catch (SQLException exi) {
                            System.out.println(exi);
                       
                
                            
          }%>

</tbody>
                        </table>
                        
                    </div>
          <div>
               <button type="submit" class="btn btn-primary" ><a style="color : white"  href="dashboard1.jsp">Go Back To DashBoard</a></button>
                                     <hr style="border-top: 1px dashed ;">
                                
          </div>
        </div>
    </body>
</html>
