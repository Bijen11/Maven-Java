/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cw.sad.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/imageuploadservelet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
        maxFileSize = 1024 * 1024 * 10,
        maxRequestSize = 1024 * 1024 * 50
)

public class ImageUploadServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        String bio = request.getParameter("bio");
        String add_info = request.getParameter("add_info");

        Part part = request.getPart("file");
        String fileName = extractFileName(part);
        String savePath = "C:\\Users\\Rai jee\\Desktop\\New folder (3)\\New folder\\Documents\\NetBeansProjects\\UserManagement\\web\\images" + File.separator + fileName;
//        File fileSaveDir =  new File(savePath);

        part.write(savePath);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/file_upload", "root", "");
            PreparedStatement pst = con.prepareStatement("insert into image values(?,?,?,?,?)");
            pst.setInt(1, id);
            pst.setString(2, bio);
            pst.setString(3, add_info);
            pst.setString(4, fileName);
            pst.setString(5, savePath);
            pst.executeUpdate();
            response.sendRedirect("display.jsp?id=" + id);

        } catch (Exception e) {
            out.println(e);

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

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

}
