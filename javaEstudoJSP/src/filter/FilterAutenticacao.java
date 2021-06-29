package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import user.UserLogado;

@WebFilter(urlPatterns= {"/pages/*"})
public class FilterAutenticacao implements Filter {

	//Faz alguma coisa quando a aplicacao é derrubada
	@Override
	public void destroy() {
		
		
	}

	//Intercepta todas nossas requisicoes
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		
		HttpSession session = req.getSession();
		
		String urlParaAutenticar = req.getServletPath();
		
		//Retorna null caso nao esteja logado
		UserLogado userLogado =  (UserLogado)session.getAttribute("usuario");
		
		
		//Usuario nao logado
		if (userLogado == null && !urlParaAutenticar.equalsIgnoreCase("/pages/ServletAutenticacao")) { //Usuario nao logado
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/autenticar.jsp?url=" + urlParaAutenticar);
			dispatcher.forward(request, response);
			return; // para o processo redirecionar
			
		}
		
		//executa as ações do request e do response
		chain.doFilter(request, response);
		
				
	}
	
	//Executa alguma coisa quando a aplicacao é iniciada
	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
		
		
	}
	
	
		

}
