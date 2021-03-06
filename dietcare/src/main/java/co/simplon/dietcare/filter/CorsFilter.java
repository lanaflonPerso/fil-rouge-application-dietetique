package co.simplon.dietcare.filter;

import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;
 
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
 
/**
 * CORS Filter
 * @author Xavier TAGLIARINO
 *
 */
@Component
public class CorsFilter extends OncePerRequestFilter {

	@Override
	protected void doFilterInternal(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, FilterChain filterChain)
			throws ServletException, IOException {
		httpServletResponse.addHeader("Access-Control-Allow-Origin", "*");
		   httpServletResponse.addHeader("Access-Control-Allow-Methods",
		   "GET, POST, PUT, DELETE, OPTIONS");
		   httpServletResponse.addHeader("Access-Control-Allow-Headers",
		   "origin, content-type, accept, x-req");
		   filterChain.doFilter(httpServletRequest, httpServletResponse);
		
	}
 
}