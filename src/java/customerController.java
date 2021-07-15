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
public class customerController extends HttpServlet {

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
        PrintWriter out = response.getWriter();  //Alert Box e try
out.println("<script src='https://code.jquery.com/jquery-2.2.0.min.js'></script>");
            out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");  
            out.println(" <script>");
            out.println(" $(document).ready(function(){");
            out.println("swal('Registration Success!', ' use your email to login!', 'Thank you');");
            out.println(" });");
            out.println("</script> ");
                RequestDispatcher requestDispatcher  = request.getRequestDispatcher("login.jsp");
        try {
            String usergender =request.getParameter("rademp_gen");
            String userfname = request.getParameter("txtcus_fname");
            String userlastname = request.getParameter("txtcus_lname");
             String userbirthday = request.getParameter("txtcus_dob");
         String useremail = request.getParameter("txtcus_email");
          int usertelnum = Integer.parseInt(request.getParameter("txtcus_telnum"));
           
             String userpassword = request.getParameter("txtpassword");
              String userrepassword = request.getParameter("txtrepassword");
            

            Connection con = DBconnection.initializeDatabase();
            PreparedStatement st = con.prepareStatement("INSERT INTO users(user_gender,user_fname,user_lname,user_birthday,user_email,user_telnum,user_password,user_repassword)VALUES('" + usergender + "','" + userfname + "','" + userlastname + "','" + userbirthday + "','" + useremail + "','" + usertelnum + "','" + userpassword + "','" + userrepassword + "')");

            st.executeUpdate();

      

        } catch (Exception e) {//alert box fail
            out.println("<script src='https://code.jquery.com/jquery-2.2.0.min.js'></script>");
            out.println("<script src='https://unpkg.com/sweetalert/dist/sweetalert.min.js'></script>");  
            out.println(" <script>");
            out.println(" $(document).ready(function(){");
            out.println("swal('Entry Fail!', 'Some thing wrong please reenter data again!', 'error');");
            out.println(" });");
            out.println("</script> ");
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
