<html>
    <head>
        <title>Welcome Here</title>
    </head>
    <body>
        <script>
            function move(){
                open("Login Reminder.jsp");
            }
        </script>
        <table border="2" width="400px">
            <tr >
                <td colspan="3">
                   <h3>
                   <i>Welcome to Reminder Application </i> 
                   </h3>

                </td>
            </tr>
            <tr>
                <td>
                   Not a new User <input type="button" onclick="move()" value="Login here">

                </td>
            </tr>
            <tr>
                <td>
                    New User ?  <a href="Registration Reminder.jsp">Register here</a>
                </td>
            </tr>
        </table>
    </body>
</html>