<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

String mfrom=request.getParameter("mfrom");
String mto=request.getParameter("mto");
String subj=request.getParameter("subject");
String mtext=request.getParameter("mtext");

try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsoftware", "shirisha", "siri123");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into mails(mfrom,mto,subject,mtext,inbox,sentbox)values('"+mfrom+"','"+mto+"','"+subj+"','"+mtext+"','1','1')");
        response.sendRedirect("composeMail.jsp?msg='Mail sent successfully'");
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
 %>
