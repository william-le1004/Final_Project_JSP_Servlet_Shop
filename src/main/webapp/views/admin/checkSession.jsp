
<%
    response.setHeader("Cache-Control","no-store, no-cache, must-revalidate");

    if(request.getSession().getAttribute("aName")==null){
        response.sendRedirect("login");
    }
%>
