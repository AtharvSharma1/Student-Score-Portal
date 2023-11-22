<%@page import="java.sql.*"%>
<html>
<body>
<%@include file="mymenu2.jsp"%>
<div id="mydata">
<center>
    <%
        String s3=request.getParameter("s2");
        if(s3!=null)
        {
    %>
    <%=s3%>
    <%}%>
<form action="delete.jsp">
<table cellpadding="12">
<tr>
<td> Enter RNO. </td>
<td> <input type="text" placeholder="Enter Roll No." class="A" name="u1"> </td>
</tr>
<tr>
<th colspan="2"> <input type="submit" class="B" name="b1" value="Delete"> </th>
</tr>
</table>
</form>
</div>
<%
    String s1=request.getParameter("u1");
    if(s1!=null)
    {
        try
        {
	    Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql:///ajava77","root","root");
	    Statement st=con.createStatement();
	    st.executeUpdate("delete from insmarks where URNO='"+s1+"'");
	    //response.sendRedirect("showall.jsp");
            response.sendRedirect("delete.jsp?s2=DATA CORRESPONDING TO ROLL NUMBER "+s1+" DELETED");
	    con.close();
        }
        catch(Exception e1)
        {
	    out.println(e1);
        }
    }
%>
</center>
</body>
</html>