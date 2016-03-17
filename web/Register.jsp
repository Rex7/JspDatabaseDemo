<%-- 
    Document   : Register
    Created on : 9 Feb, 2016, 11:03:05 AM
    Author     : Regis
--%>

<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%
    String name=request.getParameter("user");
    String rollno=request.getParameter("roll");
    String percentage=request.getParameter("per");
    //Loading The driver for mysql database server
    Class.forName("com.mysql.jdbc.Driver");
    
    Connection r = DriverManager.getConnection("jdbc:mysql://localhost:3306/babe","root","");
     
    String sql="insert into student values('"+name+"','"+rollno+"','"+percentage+"')";
     PreparedStatement ps = r.prepareStatement(sql);
    //this returns how many rows are updated
   int result=ps.executeUpdate(sql);
   if(result!=0)
   {
       out.println("its all right");
   }
   else
       out.print("you stupid");
   
    %>
