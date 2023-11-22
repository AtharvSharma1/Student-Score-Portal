<%@page import="java.sql.*"%>
<html>
<body>
<%@include file="mymenu1.jsp"%>
<div id="mydata">
<center>
    <%
        String s=request.getParameter("s1");
        if(s!=null)
        {
    %>
    <%=s%>
    <%}%>
<form action="login.jsp">
<table cellpadding="12">
<tr>
<td> Enter Name </td>
<td> <input type="text" placeholder="Enter Name" class="A" name="u1"> </td>
</tr>
<tr>
<td> Enter Pass </td>
<td> <input type="password" placeholder="Enter Password" class="A" name="u2"> </td>
</tr>
<tr>
<th colspan="2"> <input type="submit" class="B" name="b1" value="LogIn"> </th>
</tr>
</table>
</form>
<%
    String s11=request.getParameter("b1");
    if(s11!=null)
    {
    String s1=request.getParameter("u1");
    String s2=request.getParameter("u2"); 
    try
    {
	Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///ajava77","root","root");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from login where uname='"+s1+"' and upass='"+s2+"'");
	if(rs.next())
	{
            response.sendRedirect("mymenu.jsp");            
	}
	else
	{
	    //out.println("INVALID USERNAME AND PASSWORD");
            response.sendRedirect("login.jsp?s1=INVALID USER NAME AND PASSWORD");
	}
	con.close();
    }
    catch(Exception e1)
    {
	out.println(e1);
    }
    }
%>
</center>
</div>
</body>
</html>