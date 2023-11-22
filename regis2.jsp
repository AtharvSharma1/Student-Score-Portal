<%@page import="java.sql.*"%>
<%
    String s1=request.getParameter("u1");
    String s2=request.getParameter("u2");
    try
    {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql:///ajava77","root","root");
	Statement st=con.createStatement();
	st.executeUpdate("insert into login values('"+s1+"','"+s2+"')");
	//out.println("DATA INSERTED");
        response.sendRedirect("regis.jsp?s1=USER "+s1+" REGISTERED SUCCESSFULLY");
	con.close();
    }
    catch(Exception e1)
    {
        out.println(e1);
    }
%>
