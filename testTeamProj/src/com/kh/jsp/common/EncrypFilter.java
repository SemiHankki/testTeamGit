package com.kh.jsp.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.kh.jsp.common.EncryptWrapper;

/**
 * Servlet Filter implementation class EncryptFilter
 */
@WebFilter({"/login.me", "/mInsert.me", "/mUpdate.me"})
public class EncrypFilter implements Filter {


    public EncrypFilter() {    
    }

	public void destroy() {
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest)request;
		
		request.setAttribute("originPwd", req.getParameter("userPwd"));
		
		EncryptWrapper ew = new EncryptWrapper(req);
		
		chain.doFilter(ew, response);
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}

