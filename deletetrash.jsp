<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%

int mnext=Integer.parseInt(request.getParameter("mnext"));
String[] deletelist=request.getParameterValues("deletelist");
try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/emailsoftware", "shirisha", "siri123");
           Statement st=conn.createStatement();
           
           if(mnext==1)
           {
           for(int n=0;n<deletelist.length;n++)
           {
           
           int mid=Integer.parseInt(deletelist[n]);
          
           int i=st.executeUpdate("delete from mails where mid=" +mid);
      }
        response.sendRedirect("trash.jsp");
    
        }
        }
        catch(Exception e)
        {
        out.print(e.getMessage());
        e.printStackTrace();
        }
 %>
