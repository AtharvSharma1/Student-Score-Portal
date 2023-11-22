<%@page import="java.sql.*"%>
<html>
<body>
<%@include file="mymenu2.jsp"%>
<div id="mydata">
<center>
    <%
    String s33=request.getParameter("s3");
    if(s33!=null)
    {
    %>
    <%=s33%>
    <%}%>
    <%
    String s44=request.getParameter("s4");
    if(s44!=null)
    {
    %>
    <%=s44%>
    <%}%>
<form action="update.jsp">
<table cellpadding="12">
<tr>
<td> Enter RNO. </td>
<td> <input type="text" placeholder="Enter Roll No." class="A" name="u1"> </td>
</tr>
<tr>
<th colspan="2"> <input type="submit" class="B" name="b1" value="Search"> </th>
</tr>
</table>
</form>
    <%
        String s1=request.getParameter("b1");
        if(s1!=null)
        {
            String s11=request.getParameter("u1");
            try
            {
	        Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql:///ajava77","root","root");
	        Statement st=con.createStatement();
	        ResultSet rs=st.executeQuery("select * from insmarks where URNO='"+s11+"'");
	        if(rs.next())
	        {
                    %>
                    <form action="update.jsp">
                    <table cellpadding="12" border="1">
                        <tr>
                            <td> Roll Number </td>
                            <td> <input type="text" value=<%=rs.getString(1)%> name="n1" </td>
                        </tr>
                        <tr>
                            <td> Name </td>
                            <td> <input type="text" value=<%=rs.getString(2)%> name="n2" </td>
                        </tr>
                        <tr>
                            <td> Phy Marks </td>
                            <td> <input type="text" value=<%=rs.getString(3)%> name="n3" </td>
                        </tr>
                        <tr>
                            <td> Che Marks </td>
                            <td> <input type="text" value=<%=rs.getString(4)%> name="n4" </td>
                        </tr>
                        <tr>
                            <td> Maths Marks </td>
                            <td> <input type="text" value=<%=rs.getString(5)%> name="n5" </td>
                        </tr>
                        <tr>
                            <th colspan="2"> <input type="submit" value="Update" name="n6" class="B"> </th>
                        </tr>
                    </table>
                    </form>
                    <%
	        }
	        else
	        {
	            //out.println("INVALID ROLL NUMBER");
                    response.sendRedirect("update.jsp?s3=INVALID ROLL NUMBER");
	        }
	    con.close();
            }
            catch(Exception e1)
            {
	        out.println(e1);
            }
        }
    %>
</div>
<%
    String s2=request.getParameter("n6");
    if(s2!=null)
    {
        String s21=request.getParameter("n1");
        String s22=request.getParameter("n2");
        String s23=request.getParameter("n3");
        String s24=request.getParameter("n4");
        String s25=request.getParameter("n5");
        try
        {
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql:///ajava77","root","root");
	    Statement st=con.createStatement();
	    st.executeUpdate("update insmarks set UNAM='"+s22+"',PHYM='"+s23+"',CHEM='"+s24+"',MATHM='"+s25+"' where URNO='"+s21+"'");
	    //response.sendRedirect("showall.jsp");
            response.sendRedirect("update.jsp?s4=DATA CORRESPONDING TO ROLL NUMBER "+s21+" UPDATED");
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