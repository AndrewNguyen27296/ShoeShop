package shoeshop.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import shoeshop.services.BrandService;
import shoeshop.services.ProductService;


public class ShoeShopInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	ProductService productService;
	@Autowired
	BrandService brandService;
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		request.setAttribute("special", productService.listSpecial());
		request.setAttribute("brands", brandService.list());
	}	
}

