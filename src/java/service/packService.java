/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import Model.DBconnection;
import Model.pack;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

/**
 *
 * @author dhanush
 */
public class packService {
      HttpServletRequest _request;
    pack _pk;
    
    public packService(HttpServletRequest request, pack pk)
    {
        _request = request;    
        _pk = pk;
      
        _pk.username = request.getParameter("txtcus_fname");
        _pk.packone=  request.getParameter("txt_pack1");
        _pk.packtwo=  request.getParameter("txt_pack2");
        _pk.packthre=  request.getParameter("txt_pack3");
        _pk.quantity1 = Integer.parseInt(request.getParameter("txt_packquantity1"));
         _pk.quantity2 = Integer.parseInt(request.getParameter("txt_packquantity2"));
          _pk.quantity3 = Integer.parseInt(request.getParameter("txt_packquantity3"));
        _pk.subtotl1 = Double.parseDouble(request.getParameter("txt_packsubtotal1"));
          _pk.subtotl2 = Double.parseDouble(request.getParameter("txt_packsubtotal2"));
             _pk.subtotl3 = Double.parseDouble(request.getParameter("txt_packsubtotal3"));

    }
    
    public void Save1()
    {
        try
        {
            Connection con = DBconnection.initializeDatabase(); 
            PreparedStatement st = con.prepareStatement("insert into item user_pack(?, ?, ?, ? )"); 

        
            st.setString(1, _pk.username); 
            st.setString(2, _pk.packone);
                st.setInt(3,  _pk.quantity1); 
            st.setDouble(4, _pk.subtotl1); 
          
            st.executeUpdate(); 
            
            st.close(); 
            con.close();
           
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Data NOT saved successfully");
        }
    }
    
    
       public void Save2()
    {
        try
        {
            Connection con = DBconnection.initializeDatabase(); 
            PreparedStatement mm = con.prepareStatement("insert into item user_pack(?, ?, ?, ? )"); 

        
            mm.setString(1, _pk.username); 
            mm.setString(2, _pk.packtwo);
                mm.setInt(3,  _pk.quantity2); 
            mm.setDouble(4, _pk.subtotl2); 
          
            mm.executeUpdate(); 
            
            mm.close(); 
            con.close();
           
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Data NOT saved successfully");
        }
    }
       
          public void Save3()
    {
        try
        {
            Connection con = DBconnection.initializeDatabase(); 
            PreparedStatement qt = con.prepareStatement("insert into item user_pack(?, ?, ?, ? )"); 

        
            qt.setString(1, _pk.username); 
            qt.setString(2, _pk.packthre);
                qt.setInt(3,  _pk.quantity3); 
            qt.setDouble(4, _pk.subtotl3); 
          
            qt.executeUpdate(); 
            
            qt.close(); 
            con.close();
           
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Data NOT saved successfully");
        }
    }
//      public void Update()
//    {
//        try
//        {
//            Connection con = DBconnection.initializeDatabase(); 
//            PreparedStatement st = con.prepareStatement("UPDATE item SET item_name='"+_itm.itmName+"',quantity='"+_itm.quantity+"',bu_price='"+ _itm.buPrice+"',se_price='"+_itm.sePrice+"',sup_id='"+_itm.supid+"' WHERE item_code='"+_itm.itmCode+"'"); 
//      //st.setInt(1, _itm.itmCode); 
////            st.setString(1, _itm.itmName); 
////            st.setInt(3,_itm.quantity);
////           st.setDouble(4, _itm.buPrice); 
////          st.setDouble(5,_itm.sePrice);
//
//            st.executeUpdate(); 
//            
//            st.close(); 
//            con.close();
//           
//        }
//        catch(Exception e)
//        {
//            JOptionPane.showMessageDialog(null, "Data NOT saved successfully");
//        }
//    }
}
