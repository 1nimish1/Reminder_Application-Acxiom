<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Registration Form </title>
        
    </head>
    <body >
        <h1>Registration Form </h1>
        <form method="post" action="" id="myform">
            <table width="600px" align="center" border="2">
                <tr>
                    <td ><b>Enter name</b>  </td>
                    <td ><input type="text" name="u"/></td>
                </tr>
                <tr>
                    <td rowspan="1"><b>Enter Gender</b></td>
                    <td><input type="text" name="m1">MALE/ FEMALE /OTHER</td>
                </tr>
                
                
                <tr >
                    <td rowspan="1"><b>Phone number</b> </td>
                    <td><input type="text" minlength="10" name="t1"/></td>
                </tr>
                
                
                <tr >
                    <td rowspan="1"><b>Address</b></td>
                    <td colspan="2"><input type="text" name="t2"/></td>
                </tr>
                <tr height="20px">
                    <td ><b>Password(8 characters minimum)</b></td>
                    <td><input type="password" id="pass1" name="t3" minlength="8" required/></td>
                </tr>
                <tr height="20px">
                    <td ><b>Confirm Password(8 characters minimum)</b></td>
                    <td><input type="password" id="pass2" name="t4" minlength="8" required/></td>
                </tr>
                <tr align="center">
                    <br>
                    <td colspan="2"><input type="submit" name="b1"/>
                       <br><br> Already a member ? <a href="Login Reminder.jsp">Login Here</a>
                    </td>
                </tr>
                </table>
            </form>
                    <%
                        if(request.getParameter("b1")!=null){
                            try{
                            String name=request.getParameter("u");
                            String gender=request.getParameter("m1");
                            long phoneno=Long.parseLong(request.getParameter("t1"));
                            String address=request.getParameter("t2");
                            String pswd=request.getParameter("t3");
                            String Cpswd=request.getParameter("t4");
                            
                            if(!pswd.equals(Cpswd)){
                    %>
                                <Script>
                                    alert("Your confirm password is not same as password");
                                    open("Registration Reminder.jsp");
                                </Script>
                    <%
                        }else{
                        Connection con=null;
                        Statement st;
                        
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                            String sql="insert into Registration values('"+name+"','"+gender+"',"+phoneno+",'"+address+"','"+pswd+"','"+Cpswd+"')";
                            st=con.createStatement();
                            int res=st.executeUpdate(sql);
                            if(res!=0){
                    %>
                                <script>
                                    alert("Registerd Successfully");
                                    open("Home Page.jsp");
                                </script>
                    <%
                                }else{
                                    out.println("recored doesnot inserted");
                                }
                            }
                        }catch(Exception e){
                    %>
                                <script>
                                    alert("Something went wrong");
                                    open("Home Page.jsp")
                                </script>
                    <%
                            }
                        }
                        
                    %>
    </body>
</html>