package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionDataBase;
import entidades.Usuario;

public class DaoUsuario {
	
	private static Connection connection;
	
	public DaoUsuario() {
		
		connection = ConnectionDataBase.getConnection();
		
	}
	
	public List<Usuario> getUsuarios() throws Exception{
		
		List<Usuario> usuarios = new ArrayList<Usuario>();
		
		String sql = "select * from model_login";
		
		PreparedStatement statement = connection.prepareStatement(sql);
		
		ResultSet resultSet = statement.executeQuery();
		
		while (resultSet.next()) {
			
			Usuario usuario = new Usuario();
			
			usuario.setId(resultSet.getString("id"));
			usuario.setLogin(resultSet.getString("login"));
			usuario.setSenha(resultSet.getString("senha"));
			usuario.setNome(resultSet.getString("nome"));
			usuario.setEmail(resultSet.getString("email"));
			
			usuarios.add(usuario);
			
			
		}
		

		return usuarios;
		
	}

}
