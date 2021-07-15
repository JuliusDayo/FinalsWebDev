/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import models.EditProduct;
/**
 *
 * @author user
 */
public class RegisterProduct extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        

        int product_ID = Integer.parseInt(request.getParameter("product_ID"));
        int brand_ID = Integer.parseInt(request.getParameter("brand_ID"));
        int category_ID = Integer.parseInt(request.getParameter("category_ID"));
        String product_name = request.getParameter("product_name");
        int product_stocks = Integer.parseInt(request.getParameter("product_stocks"));
        
        
        EditProduct addreg = new EditProduct();
        boolean addRegistry = addreg.addRegistry(product_ID,brand_ID,category_ID,product_name,product_stocks);
        String visible = "\":true";
        String result_message;
        String result_icon,result_color;
        String success = "0";
        if (addRegistry == true) {
            
        success = "1";
        result_message= product_name+" Has been successfully registered!";
        result_icon = "success";
        result_color="green";
        request.setAttribute("visible", visible);
        request.setAttribute("result_message", result_message);
        request.setAttribute("result_icon", result_icon);
        request.setAttribute("result_color", result_color);
        
        System.out.println(product_name);
        RequestDispatcher rd = request.getRequestDispatcher("views/includes/product_list.jsp");
       
            
        rd.forward(request, response);
        }else{
            
            result_message = "Register Failed!";
            result_icon = "error";
            result_color = "red";
            request.setAttribute("result_message", result_message);
            request.setAttribute("result_icon", result_icon);
            request.setAttribute("result_color", result_color);
            request.setAttribute("visible", visible);
            RequestDispatcher rd = request.getRequestDispatcher("views/includes/product_list.jsp");
       
            
            rd.forward(request, response);
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(RegisterProduct.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(RegisterProduct.class.getName()).log(Level.SEVERE, null, ex);
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
