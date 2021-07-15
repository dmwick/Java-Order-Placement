/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.DBconnection;
import Model.pack;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.packService;

/**
 *
 * @author dhanush
 */
public class packController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet packController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet packController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       RequestDispatcher requestDispatcher = request.getRequestDispatcher("item_insert.jsp");
        requestDispatcher.forward(request, response);
        try 
        {       
            
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
             String packagetype1 = request.getParameter("txt_pack1");
                     String packagetype2 = request.getParameter("txt_pack2");
                     String packagetype3 = request.getParameter("txt_pack3");
                     
            if("on".equals(packagetype1) || "on".equals(packagetype2) || "on".equals(packagetype3))    
             {
             
               pack pk = new pack();
            packService itmSrv = new packService(request, pk); 
   
            itmSrv.Save1();
      
            System.out.println("sucess");
             
             }
            
            
          
        } 
        catch (Exception e) { 
            e.printStackTrace(); 
        } 
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
