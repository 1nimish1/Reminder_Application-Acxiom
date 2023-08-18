<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>Set Reminder</title>  
    </head>
    <body >
        <h1></h1>
        <form method="post" action="" id="myform">
            <table width="600px" align="center" border="2">
                <tr >
                    <td rowspan="1"><b>Email</b> </td>
                    <td><input type="email" minlength="8" name="t1"/></td>
                </tr> 
                <tr >
                    <td rowspan="1"><b>Phone NO</b></td>
                    <td colspan="2"><input type="text" name="t2"/></td>
                </tr>
               
                
                <tr align="center">
                    <br>
                    <td colspan="2"><input type="submit" value="Delete Reminder" name="b1"/>
                       
                    </td>
                </tr>
                </table>
            </form>
                    <%
                        if(request.getParameter("b1")!=null){
                            try{
                            long phoneno=Long.parseLong(request.getParameter("t2"));  
                        Connection con=null;
                        Statement st;
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                            String sql="delete from SetReminder where ReminderContactNo="+phoneno+" ";
                            st=con.createStatement();
                            int res=st.executeUpdate(sql);
                            if(res!=0){
                    %>
                                <script>
                                    alert("Deleted  Successfully");
                                    open("Home Page.jsp");
                                </script>
                    <%
                                }else{
                                    out.println("doesnot deleted");
                                }
                            
                        }catch(Exception e){
                    %>
                                <script>
                                    alert("Something went wrong");
                                    open("Home Page.jsp");
                                </script>
                    <%
                            }
                        }
                        
                    %>
    </body>
</html>