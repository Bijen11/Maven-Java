<%-- 
    Document   : display
    Created on : May 27, 2020, 2:50:03 PM
    Author     : Rai jee
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <%

            int imageid = Integer.parseInt(request.getParameter("id"));

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/file_upload", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT filename FROM image where id=" + imageid + "";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    String filename = rs.getString("filename");

        %>          







        <table style="width:100%">
            <tr>
                <th>Id</th>
                <th>Images</th>
            </tr>
            <tr>
                <td>
                    <%=imageid%>
                <td>
                    <image src="<%= request.getContextPath()%>/images/<%=filename%>" width="200" height="200"/>
                </td>

            </tr>

        </table>
        <%
                }
            } catch (Exception e) {
                System.out.println(e);

            }


        %>

    </body>
</html>

