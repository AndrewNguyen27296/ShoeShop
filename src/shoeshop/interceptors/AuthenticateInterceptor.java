package shoeshop.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import shoeshop.entities.Customer;

public class AuthenticateInterceptor extends HandlerInterceptorAdapter  {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		Customer user = (Customer)httpSession.getAttribute("user");
		if(user == null) {
			String cpath = request.getContextPath();
			String url = request.getRequestURI().replace(cpath, "");
			httpSession.setAttribute("backUrl", url);
			response.sendRedirect(cpath+"/account/login/");
			return false;
		}
		return true;
	}

}
