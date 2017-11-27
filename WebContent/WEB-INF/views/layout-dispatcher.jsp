<%@ page pageEncoding="utf-8"%>

<%
	String view = request.getParameter("view");
	if(view.startsWith("user/landing/")) {
		pageContext.include("user-landing-layout.jsp");
	}
	else if(view.startsWith("user/home/")) {
		pageContext.include("user-home-layout.jsp");
	}
	else if(view.startsWith("admin/landing/")) {
		pageContext.include("admin-landing-layout.jsp");
	}
	else if(view.startsWith("admin/dashboard/")) {
		pageContext.include("admin-dashboard-layout.jsp");
	}
	else {
		pageContext.include("blank-layout.jsp");
	}
%>