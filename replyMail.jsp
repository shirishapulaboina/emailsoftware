<html>
<head>
<style>
.myTextBox{
font-size:30px;
}
.myButton{
font-size:30px;
}
</style>
</head>
<body>
<%
String str=request.getParameter("msg");
String emailid="";
if(session.getAttribute("emailid")!=null)
emailid=session.getAttribute("emailid").toString();
if(str!=null)
out.println("<font size=32 color=red>"+str+"</font>");
String mto=request.getParameter("mto");
String subject=request.getParameter("subject");
%>

<table border=1 width="90%" align=center><tr><td align=center><a href="inbox.jsp">Inbox</a></td><td align=center><a href="SentBox.jsp">Sentbox</a></td><td align=center><a href="composeMail.jsp">ComposeMail</a></td><td align=center><a href="logout.jsp">Logout</a></td></tr></table><br><br>

<form name="f1" action="InsertMail.jsp">
<table align=center width=65%><tr><td>From:<input type=text class=myTextBox name="mfrom"  id="mfrom" value="<%=emailid%>" readonly>
</td></tr>
<tr><td>To:<input type=text class=myTextBox name="mto"  id="mto"  value=<%=mto%>></td></tr>
<tr><td>subject:<input type=text class="myTextBox" name="subject" id="subject" value=<%=subject%>></td></tr>
<tr><td> Text:<textarea  name="mtext" id="mtext" class="myTextBox" border=1 width=100 ></textarea>
</td>
</tr>
<tr><td><br><br><br><br><input type=submit value="SendMail" class="myButton">&nbsp;&nbsp;&nbsp;&nbsp;<input type=reset value="Reset" class="myButton">&nbsp;&nbsp;&nbsp;&nbsp;<input type=button value="Back" class="myButton"></td></tr>
 </table></form>
 </body>
 </html>
 
