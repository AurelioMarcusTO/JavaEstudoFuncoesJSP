package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DaoUsuario;
import entidades.Usuario;

@WebServlet("/pages/carregarDadosDataTable")
public class CarregarDadosDataTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private DaoUsuario daoUsuario = new DaoUsuario();
   
    public CarregarDadosDataTable() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		
		List<Usuario> usuarios = daoUsuario.getUsuarios();
		
		if (!usuarios.isEmpty()) {
		
		String json = "{"+
			  "\"draw\": 1,"+
			  "\"recordsTotal\": "+usuarios.size()+","+
			  "\"recordsFiltered\": "+usuarios.size()+","+  
			  "\"data\": ["+
			  
			  
			  "["+
			  "\"Airi\","+
			  "\"Satou\","+
			  "\"Accountant\","+
			  "\" Tokyo\","+
			  "\" 28th Nov 08\","+
			  "\"$162.700\""+
			  " ],"+
			  "["+
			  "\"Cedric\","+
			  "\"Kelly\","+
			  "\"Senior Javascript Developer\","+
			  "\"Edinburgh\","+
			  "\"29th Mar 12\","+
			  "\"$433.060\""+
			  " ]"+
			  
			  
			  " ]"+
			"}";
		
		
		response.setStatus(200); //resposta completa OK
		response.getWriter().write(json); // json de resposta (escreve a resposta Http)
		
		}
		
		}catch(Exception e) {
			
			e.printStackTrace();
			response.setStatus(500);
			
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
