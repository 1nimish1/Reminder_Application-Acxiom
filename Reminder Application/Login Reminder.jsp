<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Login  Form </title>
        
    </head>
    <body >
        <h1>Login Form </h1>
        <form method="post" action="" name="f1">
            <table width="600px" height="100px" align="center" border="2">
                <tr>
                    <td ><b>Username</b>  </td>
                    <td ><input type="text" name="u"/></td>
                </tr>
               
                <tr height="20px">
                    <td ><b>Password(8 characters minimum)</b></td>
                    <td><input type="password"  name="t1" minlength="8" required/></td>
                </tr>
                <tr height="20px">
                    <td colspan="2">
                        <input type="submit" value="Login" name="b1" />
                    </td>
                </tr>
                <tr>
                    <td>
                         <b>Don't Have an Account ?<b> <a href="Registration Reminder.jsp">SignUp Here</a>
                    </td>
                </tr>
            </table>
        </form>
        <%
        if (request.getParameter("b1") != null) {
            try {
                String uname = request.getParameter("u");
                String pswd = request.getParameter("t1");           
                Class.forName("oracle.jdbc.driver.OracleDriver");             
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");               
                String sql = "SELECT unmae, password FROM Registration WHERE password = '" + pswd + "'";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                String un = null;
                String ps = null;                
                if (rs.next()) {
                    un = rs.getString("unmae");
                    ps = rs.getString("password");
                }              
                if (un.equals(uname) && ps.equals(pswd)) {
        %>
                    <script>
                        alert("Login Successful");
                        window.location.href = "Home Page.jsp";
                    </script>
        <%
                } else{
        %>
                    <script>
                        alert("Wrong Credential");
                    </script>
        <%
                }
            } catch (Exception e) {
        %>
                <script>
                    alert("Something went wrong");
                </script>
        <%
            }
        }
        %>
    </body>
</html>