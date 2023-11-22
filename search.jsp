<%@page import="java.sql.*"%>
<html>
<body>
<%@include file="mymenu2.jsp"%>
<div id="mydata">
<center>
<form action="search.jsp">
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
                    <table cellpadding="12" border="1">
                        <tr>
                            <td> URNO </td>
                            <td> UNAME </td>
                            <td> UPHY </td>
                            <td> UCHE </td>
                            <td> UMATHS </td>
                        </tr>
                        <tr>
                            <td> <%= rs.getString(1)%> </td>
                            <td> <%= rs.getString(2)%> </td>
                            <td> <%= rs.getString(3)%> </td>
                            <td> <%= rs.getString(4)%> </td>
                            <td> <%= rs.getString(5)%> </td>
                        </tr>
                    </table>
                    <%
	        }
	        else
	        {
	            out.println("INVALID ROLL NUMBER");
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