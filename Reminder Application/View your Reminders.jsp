<%@ page import="java.sql.*" %>
<html>
    <head>
        <title>View Reminder</title>  
    </head>
    <!-- <script src="view.js"></script> -->
    <body >
        

        <%
        
                    try{   
                        Connection con=null;
                        Statement st;
                        
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                            String sql="select * from  SetReminder";
                            st=con.createStatement();
                            ResultSet res=st.executeQuery(sql);
                            while(res!=null){ %>

                                <script>
                                   const tr = document.createElement('tr');
                                   const td1 = document.createElement('td');
                                   const td2 = document.createElement('td');
                                   const td3 = document.createElement('td');
                                   const td4 = document.createElement('td');
                                   const td5 = document.createElement('td');
                                   const td6 = document.createElement('td');
                                   td1.textContent = <% out.println(res.getString("ReminderDate")); %>;
                                   td2.textContent = <% res.getString("ReminderSubject"); %>
                                   td3.textContent = <% res.getString("ReminderEmail"); %>
                                   td4.textContent = <% res.getInt("ReminderContactNo"); %>
                                   td5.textContent = <% res.getInt("ReminderSMSNo"); %>
                                   td6.textContent = <% res.getString("Description"); %>
                                   tr.appendChild(td1);
                                   tr.appendChild(td2);
                                   tr.appendChild(td3);
                                   tr.appendChild(td4);
                                   tr.appendChild(td5);
                                   tr.appendChild(td6);
                                   const table = document.getElementById('list');
                                   table.appendChild(tr);
                                   
                                </script>
<%
                                /*out.println(res.getString("ReminderDate"));
                                out.println(res.getString("ReminderSubject"));
                                out.println(res.getString("ReminderEmail"));
                                out.println(res.getInt("ReminderContactNo"));
                                out.println(res.getInt("ReminderSMSNo"));
                                out.println(res.getInt("Description"));*/
                                }
                                res.close();
                                st.close();
                                con.close();
                            
                        }catch(Exception e){
                    %>
                                <script>
                                    alert("Something went wrong");
                                    open("Home Page.jsp");
                                </script>
                    <%
                            }
                        
                    %>
    </body>
</html>