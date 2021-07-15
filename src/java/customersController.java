/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import Model.DBconnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dhanush
 */
public class customersController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        
        PrintWriter out = response.getWriter();  //Alert Box e try
out.println("<script src='https://code.jquery.com/jquery-2.2.0.min.js'></script>");
            out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");  
            out.println(" <script>");
            out.println(" $(document).ready(function(){");
           // out.println("swal('Registration Success!', ' use your email to login!', 'Thank you');");
            out.println(" });");
            out.println("</script> ");
                RequestDispatcher requestDispatcher  = request.getRequestDispatcher("login.jsp");
        try {
           Connection con = DBconnection.initializeDatabase();
            
            
            String userfname = request.getParameter("txtcus_fname");
            String userlastname = request.getParameter("txtcus_lname");
             String useradress = request.getParameter("txtcus_addr");
         String useremail = request.getParameter("txtcus_email");
           String usernic =request.getParameter("txtcus_nic");
          // int usertelnum = Integer.parseInt(request.getParameter("txtcus_telnum"));
          String usertelnum =request.getParameter("txtcus_telnum");
            String username =request.getParameter("txtcus_uname");
             String userpassword = request.getParameter("txtpassword");
            
            

           
            PreparedStatement st = con.prepareStatement("INSERT INTO users(user_fname,user_lname,user_address,user_email,user_nic,user_telnum,user_name,user_pass)VALUES('" + userfname + "','" + userlastname + "','" + useradress + "','" + useremail + "','" + usernic + "','" + usertelnum + "','" + username + "','" + userpassword + "')");

            st.executeUpdate();

             // PreparedStatement stm = con.prepareStatement("insert into invoice(total_payment) values('" +packTotal + "' )");
               //     stm.executeUpdate();
       
            
        try{ 
//              
                     String packagetype1 = request.getParameter("txt_pack1");
                     String packagetype2 = request.getParameter("txt_pack2");
                     String packagetype3 = request.getParameter("txt_pack3");
                     
//                     String language[]={packagetype1,packagetype2,packagetype3};
//                     
////                       String language[]=request.getParameterValues("txt_pack");
//                      for(int i=0;i<language.length;i++){
//                    System.out.println(language[i]+",");
                    
//                    
// switch(language[i])  {
//           case "on,on,on":
//               double packonequantity = Double.parseDouble(request.getParameter("txt_packquantity1"));
//                 double packoneSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal1"));
//                          PreparedStatement qa = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + userfname + "','package1','" + packonequantity + "','" + packoneSubtotal + "')");
//                 qa.executeUpdate();
//                   double packtwoquantity = Double.parseDouble(request.getParameter("txt_packquantity2"));
//                  double packtwoSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal2"));
//         PreparedStatement mm = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + userfname + "','package2','" + packtwoquantity + "','" + packtwoSubtotal + "')");
//                              mm.executeUpdate();
//                     double packthrequantity = Double.parseDouble(request.getParameter("txt_packquantity3"));
//double packthreSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal3"));
//                      PreparedStatement ll = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + userfname + "','package3','" + packthrequantity + "','" + packthreSubtotal + "')");
//                            ll.executeUpdate();
//                
//            case "1":
//                 double packtwoquantity = Double.parseDouble(request.getParameter("txt_packquantity2"));
//                  double packtwoSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal2"));
//         PreparedStatement mm = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + userfname + "','package2','" + packtwoquantity + "','" + packtwoSubtotal + "')");
//                              mm.executeUpdate();
//               
//            case "2":
//                double packthrequantity = Double.parseDouble(request.getParameter("txt_packquantity3"));
//double packthreSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal3"));
//                      PreparedStatement ll = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + userfname + "','package3','" + packthrequantity + "','" + packthreSubtotal + "')");
//                            ll.executeUpdate();
//                break;
//            default:
//                System.out.println("no match");
////                 break;
//        }
//            
//   
//              }
                    
                     
             if("on".equals(packagetype1) || "on".equals(packagetype2) || "on".equals(packagetype3))    
             {
                 
                 double packonequantity = Double.parseDouble(request.getParameter("txt_packquantity1"));
                 double packoneSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal1"));
                 PreparedStatement qa = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + username + "','package1','" + packonequantity + "','" + packoneSubtotal + "')");
                 qa.executeUpdate();
                    double packtwoquantity = Double.parseDouble(request.getParameter("txt_packquantity2"));
                  double packtwoSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal2"));
                   PreparedStatement mm = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + username + "','package2','" + packtwoquantity + "','" + packtwoSubtotal + "')");
                              mm.executeUpdate();
                              double packthrequantity = Double.parseDouble(request.getParameter("txt_packquantity3"));
double packthreSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal3"));
                   PreparedStatement ll = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + username + "','package3','" + packthrequantity + "','" + packthreSubtotal + "')");
                            ll.executeUpdate();
                            
//             }else if("on".equals(packagetype2)){
//                 double packtwoquantity = Double.parseDouble(request.getParameter("txt_packquantity2"));
//                  double packtwoSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal2"));
//                   PreparedStatement mm = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + userfname + "','package2','" + packtwoquantity + "','" + packtwoSubtotal + "')");
//                              mm.executeUpdate();
//              
//             }else if("on".equals(packagetype3)){
//double packthrequantity = Double.parseDouble(request.getParameter("txt_packquantity3"));
//double packthreSubtotal = Double.parseDouble(request.getParameter("txt_packsubtotal3"));
//                   PreparedStatement ll = con.prepareStatement("INSERT INTO user_pack(user_name,pack_name,quantity,subtotal)VALUES('" + userfname + "','package3','" + packthrequantity + "','" + packthreSubtotal + "')");
//                            ll.executeUpdate();
             }else{
                 System.out.println("error");
             }
             
             
             
             
             
             
               
             //                     double packTotal = Double.parseDouble(request.getParameter("txt_packfulltotal"));
//                     
//                    double packonequantity = Double.parseDouble(request.getParameter("txt_packquantity1"));
//                     double packtwoquantity = Double.parseDouble(request.getParameter("txt_packquantity2"));
//                      double packthrequantity = Double.parseDouble(request.getParameter("txt_packquantity3"));
//                      
//                       double packoneSubtotal= Double.parseDouble(request.getParameter("txt_packfulltotal"));
//                       double packtwoSubtotal = Double.parseDouble(request.getParameter("txt_packfulltotal"));
//                       double packthreSubtotal = Double.parseDouble(request.getParameter("txt_packfulltotal"));
                     
//String newpack = packagetype;
// switch(newpack)  {
//           case "package1":
//                          PreparedStatement qa = con.prepareStatement("INSERT INTO user_pack(user_fname,pack_name,quantity,subtotal)VALUES('" + userfname + "','" + packagetype + "','" + packonequantity + "','" + packoneSubtotal + "')");
//                               qa.executeUpdate();
//                
//            case "package2":
//           PreparedStatement mm = con.prepareStatement("INSERT INTO user_pack(user_fname,pack_name,quantity,subtotal)VALUES('" + userfname + "','" + packagetype + "','" + packtwoquantity + "','" + packtwoSubtotal + "')");
//                                mm.executeUpdate();
//               
//            case "package3":
//                  PreparedStatement ll = con.prepareStatement("INSERT INTO user_pack(user_fname,pack_name,quantity,subtotal)VALUES('" + userfname + "','" + packagetype + "','" + packthrequantity + "','" + packthreSubtotal + "')");
//                                ll.executeUpdate();
//                break;
//            default:
//                System.out.println("no match");
//                 break;
//        }
               
                  
                    
                    
                   
     
    
             
 
               }catch(Exception e){
               System.out.println(e);
               }
            
      

        } catch (Exception e) {//alert box fail
            out.println("<script src='https://code.jquery.com/jquery-2.2.0.min.js'></script>");
            out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");  
            out.println(" <script>");
            out.println(" $(document).ready(function(){");
            out.println("swal('Entry Fail!', 'Some thing wrong please reenter data again!', 'error');");
            out.println(" });");
            out.println("</script> ");
      //   request.getRequestDispatcher("homepage1.jsp");
        } finally {
              requestDispatcher.include(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
