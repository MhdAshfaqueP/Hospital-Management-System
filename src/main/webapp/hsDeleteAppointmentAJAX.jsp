<jsp:useBean id="obj" class="data.AdminManager" />

<%
    String appId = request.getParameter("app_id");
    int result = obj.deleteQuery(appId);

    if (result == 1) {
        response.getWriter().write("success");
    } else {
        response.getWriter().write("error");
    }
%>
