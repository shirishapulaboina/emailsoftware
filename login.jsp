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
if(str!=null)
out.println("<font size=32 color=red>"+str+"</font>");
%>

<form name="f1" action="vldtlogin.jsp">
<table align=center width=65%><tr><td>Uname:<input type=text class=myTextBox name="uname"  id="uname" >
<br><br><br>
<tr><td>password:<input type=text class="myTextBox" name="pwd" id="pwd"></td></tr>
<br><br><br>
<tr><td><input type="submit"  value="Login" class="myButton"><br><br>
 <input type=reset value="Reset"  class="myButton"></td></tr></table></form>
 </body>
 </html>
 
