<%@ page pageEncoding="utf-8"%>

<%
	String view = request.getParameter("view");
	if(view.startsWith("user/")) {
		pageContext.include("user-layout.jsp");
	}
	else if(view.startsWith("admin/landing/")) {
		pageContext.include("admin-landing-layout.jsp");
	}
	else if(view.startsWith("admin/dashboard/")) {
		pageContext.include("admin-dashboard-layout.jsp");
	}
	else if(view.startsWith("product/")) {
		pageContext.include("product-layout.jsp");
	}
	else {
		pageContext.include("blank-layout.jsp");
	}
%>