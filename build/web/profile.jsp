
<%@page import="java.util.ArrayList"%>
<%@page import="com.tech.blog.entities.Category"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>
<%@page import="com.tech.blog.entities.Message"%>
<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="error_page.jsp" %>
<%

    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login_page.jsp");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--css-->
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--/css-->
    </head>
    <body>
        !--header section starts-->
        <header class="header" data-aos="fade-down">
            <section class="flex">
                <a href="home.html" class="logo">TechBlog.</a>

                <nav class="navbar">
                    <a href="index.jsp">home</a>
                    <!--<a href="about.html">about</a>-->
                    <a href="contact.jsp">contact</a>
                    <a href="#" data-toggle="modal" data-target="#add-post-modal"><span class="fa fa-bell-o"></span> Do Post</a>
                    <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle-o"></span> <%=user.getName()%></a>
                    <a href="LogoutServlet"><span class="fa fa-sign-out"></span> Logout</a>

                </nav>

                <div id="menu-btn" class="fas fa-bars">

                </div>

            </section>
        </header>

        <!--header section ends-->

        <%
            Message m = (Message) session.getAttribute("msg");
            if (m != null) {
        %>
        <div class="alert <%= m.getCssClass()%>" role="alert">
            <%= m.getContent()%>

        </div>


        <%
                session.removeAttribute("msg");
            }


        %>

        <!--main body of the page-->
        <div class="profile">
            <div class="split left">
                <div class="centered">
                    <div>
                        <a href="#" onclick="getPosts(0, this)">
                            All Posts
                        </a>
                        <!--categories-->
                        <div class="links">

                            <%                                PostDao d = new PostDao(ConnectionProvider.getConnection());
                                ArrayList<Category> list1 = d.getAllCategories();
                                for (Category cc : list1) {
                            %>
                            <a href="#" onclick="getPosts(<%= cc.getCid()%>, this)"><%= cc.getName()%></a>


                            <%
                                }
                            %>
                        </div>

                    </div>
                </div>
            </div>


            <div class="split right">
                <div>
                    <!--posts-->
                    <div id="loader">
                        <i class="fa fa-refresh fa-3x fa-spin"></i>
                        <h3>Loading.....</h3>

                    </div>

                    <div id="post-container">

                    </div>
                </div>
            </div>
        </div>
        <!--/main body of the page-->

        <!--profile modal-->


        <!-- Modal -->
        <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white text-center">
                        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="text-center">
                            <img src="pics/<%=user.getProfile()%>" class="img-fluid">
                            <h3 class="modal-title mt-2" id="exampleModalLabel"><%=user.getName()%></h3>
                            <!--details-->
                            <div id="profile-details">
                                <table class="table">

                                    <tbody>
                                        <tr>
                                            <th scope="row">ID</th>
                                            <td><%=user.getId()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Email</th>
                                            <td><%=user.getEmail()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Gender</th>
                                            <td><%=user.getGender()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">About</th>
                                            <td><%=user.getAbout()%></td>

                                        </tr>
                                        <tr>
                                            <th scope="row">Registered Date</th>
                                            <td><%=user.getDateTime().toString()%></td>

                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!--profile edit-->

                            <div id="profile-edit" style="display: none;">
                                <h2 class="mt-2">Edit Here</h2>
                                <form action="EditServlet" method="post" enctype="multipart/form-data">
                                    <table class="table">
                                        <tr>
                                            <td>ID</td>
                                            <td><%=user.getId()%></td>
                                        </tr>
                                        <tr>
                                            <td>Email</td>
                                            <td> <input type="email" class="form-control" name="user_email" value="<%=user.getEmail()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Name</td>
                                            <td> <input type="text" class="form-control" name="user_name" value="<%=user.getName()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Password</td>
                                            <td> <input type="password" class="form-control" name="user_password" value="<%=user.getPassword()%>"></td>
                                        </tr>
                                        <tr>
                                            <td>Gender</td>
                                            <td><%=user.getGender().toUpperCase()%> </td>
                                        </tr>
                                        <tr>
                                            <td>About</td>
                                            <td> 
                                                <textarea rows="3" class="form-control" name="user_about"><%=user.getAbout()%>
                                                </textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Profile Pic</td>
                                            <td> 
                                                <input type="file" name="image" class="form-control">
                                            </td>
                                        </tr>
                                    </table>
                                    <div class="container ">
                                        <button type="submit" class="btn btn-outline-primary">Save</button>
                                    </div>

                                </form>
                            </div>

                            <!--/details-->

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
                    </div>
                </div>
            </div>
        </div>




        <!--/profile modal-->

        <!--add post modal-->


        <!-- Modal -->
        <div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Post Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span style="font-size: 3rem;color: red" aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="box">
                            <form id="add-post-form" actioadd-post-form"n="AddPostServlet" method="post">

                                <div class="form-group">
                                    <select class="form-control" name="cid">
                                        <option selected disabled>---Select Category---</option>
                                        <%
                                            PostDao postd = new PostDao(ConnectionProvider.getConnection());
                                            ArrayList<Category> list = postd.getAllCategories();
                                            for (Category c : list) {

                                        %>


                                        <option value="<%=c.getCid()%>"><%= c.getName()%></option>

                                        <%
                                            }
                                        %>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <input name="pTitle" type="text" placeholder="Enter The Title" class="form-control">
                                </div>

                                <div class="form-group">
                                    <textarea name="pContent" class="form-control" style="height: 200px;" placeholder="Enter the content"></textarea>
                                </div>

                                <div class="form-group">
                                    <textarea name="pCode" class="form-control" style="height: 200px;" placeholder="Enter the code"></textarea>
                                </div>

                                <div class="form-group">
                                    <label>Select the pic</label>
                                    <br>
                                    <input type="file" name="pic" >
                                </div>

                                <button type="submit" class="btn btn-outline-primary">Post</button>


                            </form>
                        </div>


                    </div>

                </div>
            </div>
        </div>



        </!--add post modal-->

        <!--javascript-->
        <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.6.4.min.js"
            integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script src="js/script.js" type="text/javascript"></script>
        <script src="js/profile.js" type="text/javascript"></script>



        <!--/javascript-->
    </body>
</html>
