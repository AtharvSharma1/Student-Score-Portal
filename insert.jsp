<%@page import="java.sql.*"%>
<html>
<body>
<%@include file="mymenu2.jsp"%>
<div id="mydata">
<center>
    <%
        String s=request.getParameter("s1");
        if(s!=null)
        {
    %>
    <%=s%>
    <%}%>
<form action="insert.jsp">
<table cellpadding="12">
<tr>
<td> Enter RNO. </td>
<td> <input type="text" placeholder="Enter Roll No." class="A" name="u1"> </td>
</tr>
<tr>
<td> Enter Name </td>
<td> <input type="text" placeholder="Enter Name" class="A" name="u2"> </td>
</tr><tr>
<td> Enter Phy Marks </td>
<td> <input type="text" placeholder="Enter Phy Marks" class="A" name="u3"> </td>
</tr><tr>
<td> Enter Che Marks </td>
<td> <input type="text" placeholder="Enter Che Marks" class="A" name="u4"> </td>
</tr>
<tr>
<td> Enter Maths Marks </td>
<td> <input type="text" placeholder="Enter maths marks" class="A" name="u5"> </td>
</tr>
<tr>
<th colspan="2"> <input type="submit" class="B" name="b1" value="Insert"> </th>
</tr>
</table>
</form>
    <%
        String s11=request.getParameter("b1");
        if(s11!=null)
        {
            String s1=request.getParameter("u1");
            String s2=request.getParameter("u2");
            String s3=request.getParameter("u3");
            String s4=request.getParameter("u4");
            String s5=request.getParameter("u5");
            try
            {
	        Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql:///ajava77","root","root");
	        Statement st=con.createStatement();
	        st.executeUpdate("insert into insmarks values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
	        //out.println("DATA INSERTED");
                response.sendRedirect("insert.jsp?s1=DATA OF ROLL NUMBER "+s1+" INSERTED SUCCESSFULLY");
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