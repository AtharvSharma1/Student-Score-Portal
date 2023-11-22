<html>
<head>
<script type="text/javascript" src="abc1.js"></script>
</head>
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
<form action="regis2.jsp" name="form1">
<table cellpadding="12">
<tr>
<td> Enter Name </td>
<td> <input type="text" placeholder="Enter Name" class="A" name="u1" id="t1">
<br>
<font id="p1"> </font>
</td>
</tr>
<tr>
<td> Enter Pass </td>
<td> <input type="password" placeholder="Enter Password" class="A" name="u2" id="t2">
<br>
<font id="p2"> </font>
</td>
</tr>
<tr>
<th colspan="2"> <input type="button" class="B" name="b1" value="Register" onclick="demo()"> </th>
</tr>
</table>
</form>
</center>
</div>
</body>
</html>