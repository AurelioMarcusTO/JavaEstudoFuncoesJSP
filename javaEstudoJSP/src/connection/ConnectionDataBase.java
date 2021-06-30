package connection;

import java.sql.Connection;
import java.sql.DriverManager;

//Realizar conexao com o banco de dados
public class ConnectionDataBase {
	
	private static String url = "jdbc:postgresql://localhost:5433/curso-jsp?autoReconnect=true";
	private static String user = "postgres";
	private static String password = "admin";
	
	private static Connection connection = null;
	
	static {
		
		conectar();
		
	}
	
	public ConnectionDataBase() {
		conectar();
	}
	
	private static void conectar() {
		
		try {
			
			if(connection == null) {
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(url, user, password);
				
			}
			
		}catch(Exception exception) {
			
			throw new RuntimeException("Erro ao comunicar com o banco de dados" + exception.getMessage());
			
		}
		
		
	}
	
	//Retorna a conexao do banco de dados
	public static Connection getConnection( ) {
		
		return connection;
	}
	

}
