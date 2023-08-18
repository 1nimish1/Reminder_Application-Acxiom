<html>
    <head>
        <title>Reminder Application </title>
        
    </head>
    <body>
        <script>
            function func(){
                open("Reminders Application.jsp");
            }
        </script>
        <table border="2" align="center" width="500px">
            <tr  >
                <td colspan="2">
                    <i><h3>Welcome to the Reminder Application</h3></h3></h3></i>
                <br>
                    <i><h6>Today is Friday ,18th Of February </h6></h3></h3></i>
                </td>
            </tr>
            <tr>
                <td align="center">
                   <a href="Set Reminder.jsp">Set Reminder </a> 		
                </td>
            </tr>
            <tr>
                <td align="center">
                    <a href="Modify Reminder.jsp"> Modify Reminder</a>
                </td>
            </tr>
                <tr>
                <td align="center">
                    <a href="Disable Reminder.jsp">Disable Reminder</a> 	
                </td>
            </tr><tr>
                <td align="center">
                    <a href=" Delete Reminder.jsp">Delete Reminder</a>	
                </td>
            </tr>
            <tr>
                <td align="center">
                    <a href="Enable Reminder.jsp">Enable Reminder</a>  
                </td>
            </tr>
            <tr>
                <td align="center">
                    <a href="View your Reminders.jsp">View Your Reminders</a>	
                </td>
            </tr>
            <tr>
                <td>
                    <input type="button" value="Logout" onclick="func()">
                </td>
            </tr>
        </table>
        
        
        
    </body>
</html>