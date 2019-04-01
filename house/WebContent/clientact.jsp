<%-- 
    Document   : admin_login_process
    Created on : 1 Apr, 2019, 2:37:27 PM
    Author     : admin
--%>

<%

                        try {

                            String username = request.getParameter("username");
                            String password = request.getParameter("password");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("admin") ) && (password.equals("admin"))) {

                                response.sendRedirect("clienthome.jsp?m1=success");

                            } else {

                      response.sendRedirect("client.jsp?m2=Failed");
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>
