<%@page import="com.tech.blog.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.PostDao"%>

<div class="loadposts"  data-aos="zoom-out">

    <%
//        Thread.sleep(1000);
        PostDao d = new PostDao(ConnectionProvider.getConnection());
        int cid = Integer.parseInt(request.getParameter("cid"));
        List<Post> posts = null;
        if (cid == 0) {
            posts = d.getAllPosts();
        } else {
            posts = d.getPostByCatId(cid);
        }

        if (posts.size() == 0) {
            out.println("<h3>No posts...</h3>");
            return;
        }
        for (Post p : posts) {
    %>

    <div class="flex">

        <div class="box" data-aos="fade-up" >

            <h3><%= p.getpTitle()%></h3>
            <img src="blog_pics/<%= p.getpPic()%>"/>
            <p>Lorem ipsum dolor sit amet,  elit. 
                 optio iusto cum architecto , sit labore 
                minus odit ullam quos...
            </p>
            <a class="btn" href="show_blog_page.jsp?post_id=<%= p.getPid()%>">read more</a>

        </div>


    </div>



    <%
        }

    %>
</div>
