<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String mfrom=request.getParameter("mfrom");
String mto=request.getParameter("mto");
String subject=request.getParameter("subject");
String mtext=request.getParameter("mtext");
try
{
           Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsoftware", "shirisha", "siri123");
           Statement st=conn.createStatement();
           int mid=Integer.parseInt(request.getParameter("mid"));
           int i=st.executeUpdate("update mails set inbox=0 where mid=" +mid);
           response.sendRedirect("inbox.jsp");
        }
        catch(Exception e)
        {
        out.print(e.getMessage());
        e.printStackTrace();
        }
 %>